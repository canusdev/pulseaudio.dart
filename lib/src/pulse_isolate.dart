import 'dart:async';
import 'dart:ffi';
import 'dart:isolate';

import 'package:ffi/ffi.dart';
import 'package:pulseaudio/src/generated_bindings.dart';
import 'package:pulseaudio/src/model/input_sink.dart';
import 'package:pulseaudio/src/model/isolate_request.dart';
import 'package:pulseaudio/src/model/isolate_response.dart';
import 'package:pulseaudio/src/model/server_info.dart';
import 'package:pulseaudio/src/model/sink.dart';
import 'package:pulseaudio/src/model/source.dart';
import 'package:pulseaudio/src/model/stream.dart';

final PulseAudioBindings pa =
    PulseAudioBindings(DynamicLibrary.open('libpulse.so.0'));

class PulseIsolate {
  static PulseIsolate? _instance;

  final ret = calloc<Int>();
  final Pointer<pa_mainloop> mainloop;
  final Pointer<pa_mainloop_api> mainloopApi;
  final Pointer<pa_context> context;
  final SendPort _sendPort;

  final operationCallbackMap = <Pointer<pa_operation>, Function()>{};

  final responsePerIdMap = <int, IsolateResponse>{};

  PulseIsolate._(this._sendPort, this.mainloop, this.mainloopApi, this.context);

  factory PulseIsolate(SendPort sendPort) {
    if (_instance != null) return _instance!;
    final mainloop = pa.pa_mainloop_new();
    final mainloopApi = pa.pa_mainloop_get_api(mainloop);
    final context = pa.pa_context_new(
        mainloopApi, 'Antandros Virtual Device Client'.toNativeUtf8().cast());
    pa.pa_context_connect(
        context, nullptr, pa_context_flags.PA_CONTEXT_NOAUTOSPAWN, nullptr);

    _instance = PulseIsolate._(sendPort, mainloop, mainloopApi, context);

    pa.pa_context_set_state_callback(
      _instance!.context,
      Pointer.fromFunction(_contextSetState),
      nullptr,
    );

    final recPort = ReceivePort();
    _instance!._sendPort.send(recPort.sendPort);

    recPort.cast<IsolateRequest>().listen((message) {
      switch (message) {
        case DisposeRequest():
          dispose();
          break;
        case SetSinkVolumeRequest():
          _setSinkVolume(message.requestId, message.sinkName, message.volume);
          break;
        case SetSourceVolumeRequest():
          _setSourceVolume(
              message.requestId, message.sourceName, message.volume);
          break;
        case SetSinkMuteRequest():
          _setSinkMute(message.requestId, message.sinkName, message.mute);
          break;
        case SetSourceMuteRequest():
          _setSourceMute(message.requestId, message.sourceName, message.mute);
          break;
        case SetDefaultSinkRequest():
          _setDefaultSink(message.requestId, message.sinkName);
          break;
        case SetDefaultSourceRequest():
          _setDefaultSource(message.requestId, message.sourceName);
          break;
        case GetSinkListRequest():
          _getSinkList(message.requestId);
          break;
        case GetSourceListRequest():
          _getSourceList(message.requestId);
          break;
        case GetServerInfoRequest():
          _getServerInfo(message.requestId);
          break;
        case GetInputSinkListRequest():
          _getInputSinkList(message.requestId);
          break;
        case PropListUpdate():
          _propListSets(
              message.requestId, message.mode, message.key, message.value);
        case CreateStreamCallbackRequest():
          _streamCallback(
              message.requestId, message.sinkIndex, message.sourceIndex);
      }
    });

    final exitPort = ReceivePort();
    exitPort.listen((_) {
      PulseIsolate.dispose();
      exitPort.close();
    });
    Isolate.current.addOnExitListener(exitPort.sendPort);

    _runMainLoop();
    return _instance!;
  }

  static Future<void> _runMainLoop() async {
    if (_instance == null) return;
    if (_instance!.operationCallbackMap.isEmpty) {
      // Prepare the main loop for events
      pa.pa_mainloop_prepare(_instance!.mainloop, 50 * 1000);
      // Check for events without blocking
      pa.pa_mainloop_poll(_instance!.mainloop);
      pa.pa_mainloop_dispatch(_instance!.mainloop);
    } else {
      while (_instance!.operationCallbackMap.isNotEmpty) {
        pa.pa_mainloop_iterate(_instance!.mainloop, 1, _instance!.ret);

        final operations = _instance!.operationCallbackMap.keys.toList();
        for (final operation in operations) {
          if (pa.pa_operation_get_state(operation) ==
              pa_operation_state.PA_OPERATION_DONE) {
            final callback = _instance!.operationCallbackMap[operation]!;
            callback.call();
            _instance!.operationCallbackMap.remove(operation);
            pa.pa_operation_unref(operation);
          }
        }
      }
    }
    Timer.run(_runMainLoop);
  }

  static void dispose() {
    pa.pa_context_disconnect(_instance!.context);
    pa.pa_context_unref(_instance!.context);
    pa.pa_mainloop_free(_instance!.mainloop);
    calloc.free(_instance!.ret);
    _instance = null;
    Isolate.current.kill(priority: Isolate.immediate);
  }

  static void _contextSetState(
    Pointer<pa_context> context,
    Pointer<Void> userdata,
  ) {
    final state = pa.pa_context_get_state(context);
    switch (state) {
      case pa_context_state.PA_CONTEXT_CONNECTING:
      case pa_context_state.PA_CONTEXT_AUTHORIZING:
      case pa_context_state.PA_CONTEXT_SETTING_NAME:
        break;
      case pa_context_state.PA_CONTEXT_READY:
        pa.pa_context_set_subscribe_callback(
          context,
          Pointer.fromFunction(_onSubscribe),
          userdata,
        );
        pa.pa_context_subscribe(
          context,
          pa_subscription_mask.PA_SUBSCRIPTION_MASK_ALL,
          nullptr,
          userdata,
        );

        _instance!._sendPort.send(const IsolateResponse.ready());
        break;
      case pa_context_state.PA_CONTEXT_TERMINATED:
        break;
      case pa_context_state.PA_CONTEXT_FAILED:
        // ignore: unused_local_variable
        final error = pa.pa_strerror(pa.pa_context_errno(context));
        break;
      case pa_context_state.PA_CONTEXT_UNCONNECTED:
        break;
    }
  }

  static void _onInputSinkListInfo(
    Pointer<pa_context> context,
    Pointer<pa_sink_input_info> sink,
    int eol,
    Pointer<Void> userdata,
  ) {
    if (eol > 0) {
      return;
    }

    final requestId = userdata.cast<Int>().value;
    final response =
        _instance!.responsePerIdMap[requestId]! as OnInputSinkListResponse;
    _instance!.responsePerIdMap[requestId] = response.copyWith(
        list: [...response.list, PulseAudioInputSink.fromNative(sink.ref)]);
  }

  static void _getSourceList(int requestId) {
    final requestIdNative = calloc<Int>()
      ..value = requestId; // Allocate memory explicitly

    _instance!.responsePerIdMap[requestId] =
        OnSourceListResponse(requestId: requestId, list: []);
    final operation = pa.pa_context_get_source_info_list(
      _instance!.context,
      Pointer.fromFunction(_onSourceListInfo),
      requestIdNative.cast(),
    );

    _instance!.operationCallbackMap[operation] = () {
      _instance!._sendPort.send(_instance!.responsePerIdMap[requestId]!);
      calloc.free(requestIdNative); // Free memory when the operation is done
    };
  }

  static void _propListSets(
      int requestId, pa_update_mode mode, String key, String value) {
    var propList = pa.pa_proplist_new();
    pa.pa_proplist_sets(
        propList, key.toNativeUtf8().cast(), value.toNativeUtf8().cast());
    var operation = pa.pa_context_proplist_update(
        _instance!.context, mode, propList, nullptr, nullptr);
    _instance!.operationCallbackMap[operation] = () {
      _instance!._sendPort.send(PropListUpdateResponse(requestId: requestId));
    };
  }

  static void _streamCallback(
      int requestId, String streamIndex, String sourceIndex) {
    final Pointer<pa_sample_spec> spec = calloc<pa_sample_spec>();

    spec.ref.channels = 2;
    spec.ref.rate = 44100;
    spec.ref.formatAsInt = 8;

    final Pointer<pa_buffer_attr> buffer = calloc<pa_buffer_attr>();
    buffer.ref.fragsize = sizeOf<Float>();
    buffer.ref.maxlength = sizeOf<Uint32>() - 1;

    var stream = pa.pa_stream_new(
        _instance!.context, "Peak Detect".toNativeUtf8().cast(), spec, nullptr);
    if (streamIndex == "") {
      pa.pa_stream_set_monitor_stream(stream, int.parse(streamIndex));
    }
    var requestIdNative = "$requestId|$sourceIndex|$streamIndex";
    pa.pa_stream_set_read_callback(
        stream,
        Pointer.fromFunction(_onStreamCallback),
        requestIdNative.toNativeUtf8().cast());

    pa.pa_stream_connect_record(stream, sourceIndex.toNativeUtf8().cast(),
        buffer, pa_stream_flags.fromValue(PA_STREAM_PEAK_DETECT));
  }

  static void _getInputSinkList(int requestId) {
    final requestIdNative = calloc<Int>()
      ..value = requestId; // Allocate memory explicitly

    _instance!.responsePerIdMap[requestId] =
        OnInputSinkListResponse(requestId: requestId, list: []);
    final operation = pa.pa_context_get_sink_input_info_list(
      _instance!.context,
      Pointer.fromFunction(_onInputSinkListInfo),
      requestIdNative.cast(),
    );

    _instance!.operationCallbackMap[operation] = () {
      _instance!._sendPort.send(_instance!.responsePerIdMap[requestId]!);
      calloc.free(requestIdNative); // Free memory when the operation is done
    };
  }

  static void _getSinkList(int requestId) {
    final requestIdNative = calloc<Int>()
      ..value = requestId; // Allocate memory explicitly

    _instance!.responsePerIdMap[requestId] =
        OnSinkListResponse(requestId: requestId, list: []);
    final operation = pa.pa_context_get_sink_info_list(
      _instance!.context,
      Pointer.fromFunction(_onSinkListInfo),
      requestIdNative.cast(),
    );

    _instance!.operationCallbackMap[operation] = () {
      _instance!._sendPort.send(_instance!.responsePerIdMap[requestId]!);
      calloc.free(requestIdNative); // Free memory when the operation is done
    };
  }

  static void _onSinkListInfo(
    Pointer<pa_context> context,
    Pointer<pa_sink_info> sink,
    int eol,
    Pointer<Void> userdata,
  ) {
    if (eol > 0) {
      return;
    }

    final requestId = userdata.cast<Int>().value;
    final response =
        _instance!.responsePerIdMap[requestId]! as OnSinkListResponse;

    _instance!.responsePerIdMap[requestId] = response.copyWith(
        list: [...response.list, PulseAudioSink.fromNative(sink.ref)]);
  }

  static void _onStreamCallback(
    Pointer<pa_stream> source,
    int length,
    Pointer<Void> userdata,
  ) {
    final requestId = userdata.cast<Utf8>().toDartString().split("|");

    print("scallbakc $requestId");

    _instance!._sendPort.send(IsolateResponse.streamCallback(
        requestId: int.parse(requestId[0]),
        callback: PulseAudioStreamCallback.fromNative(
            source, length, int.parse(requestId[1]), int.parse(requestId[2]))));
  }

  static void _onSourceListInfo(
    Pointer<pa_context> context,
    Pointer<pa_source_info> source,
    int eol,
    Pointer<Void> userdata,
  ) {
    if (eol > 0) {
      return;
    }
    final requestId = userdata.cast<Int>().value;
    final response =
        _instance!.responsePerIdMap[requestId]! as OnSourceListResponse;

    _instance!.responsePerIdMap[requestId] = response.copyWith(
        list: [...response.list, PulseAudioSource.fromNative(source.ref)]);
  }

  static void _getServerInfo(int requestId) {
    final requestIdNative = calloc<Int>()
      ..value = requestId; // Allocate memory explicitly

    final operation = pa.pa_context_get_server_info(
      _instance!.context,
      Pointer.fromFunction(_onServerInfo),
      requestIdNative.cast(),
    );

    _instance!.operationCallbackMap[operation] = () {
      _instance!._sendPort.send(_instance!.responsePerIdMap[requestId]!);
      calloc.free(requestIdNative); // Free memory when the operation is done
    };
  }

  static void _onServerInfo(
    Pointer<pa_context> context,
    Pointer<pa_server_info> serverInfo,
    Pointer<Void> userdata,
  ) {
    final requestId = userdata.cast<Int>().value;
    _instance!.responsePerIdMap[requestId] = OnServerInfoResponse(
        requestId: requestId,
        info: PulseAudioServerInfo.fromNative(serverInfo.ref));
  }

  static void _onServerInfoChanged(
    Pointer<pa_context> context,
    Pointer<pa_server_info> serverInfo,
    Pointer<Void> userdata,
  ) {
    _instance!._sendPort.send(IsolateResponse.onServerInfoChanged(
        serverInfo: PulseAudioServerInfo.fromNative(serverInfo.ref)));
  }

  static void _onSinkInfoChanged(
    Pointer<pa_context> context,
    Pointer<pa_sink_info> sink,
    int eol,
    Pointer<Void> userdata,
  ) {
    // The first call doesn't have info of the sink
    if (sink != nullptr) {
      _instance!._sendPort.send(IsolateResponse.onSinkChanged(
        sink: PulseAudioSink.fromNative(sink.ref),
      ));
    }
  }

  static void _onSourceInfoChanged(
    Pointer<pa_context> context,
    Pointer<pa_source_info> source,
    int eol,
    Pointer<Void> userdata,
  ) {
    // The first call doesn't have info of the sink
    if (source != nullptr) {
      _instance!._sendPort.send(IsolateResponse.onSourceChanged(
          source: PulseAudioSource.fromNative(source.ref)));
    }
  }

  static void _onSubscribe(
    Pointer<pa_context> context,
    int type,
    int idx,
    Pointer<Void> userdata,
  ) {
    final eventFacility = type & PA_SUBSCRIPTION_EVENT_FACILITY_MASK;
    final eventType = type & PA_SUBSCRIPTION_EVENT_TYPE_MASK;

    Pointer<pa_operation> op = nullptr;

    switch (eventFacility) {
      case PA_SUBSCRIPTION_EVENT_SERVER:
        pa.pa_context_get_server_info(
          context,
          Pointer.fromFunction(_onServerInfoChanged),
          userdata,
        );
        break;
      case PA_SUBSCRIPTION_EVENT_SINK:
        if (eventType == PA_SUBSCRIPTION_EVENT_REMOVE) {
          _instance!._sendPort.send(IsolateResponse.onSinkRemoved(index: idx));
        } else {
          op = pa.pa_context_get_sink_info_by_index(
            context,
            idx,
            Pointer.fromFunction(_onSinkInfoChanged),
            userdata,
          );
        }
        break;

      case PA_SUBSCRIPTION_EVENT_SOURCE:
        if (eventType == PA_SUBSCRIPTION_EVENT_REMOVE) {
          _instance!._sendPort
              .send(IsolateResponse.onSourceRemoved(index: idx));
        } else {
          op = pa.pa_context_get_source_info_by_index(
            context,
            idx,
            Pointer.fromFunction(_onSourceInfoChanged),
            userdata,
          );
        }
        break;
    }

    if (op.address != nullptr.address) pa.pa_operation_unref(op);
  }

  static _setSinkVolume(int requestId, String name, double volume) {
    using((Arena arena) {
      final pVolume = arena<pa_cvolume>();
      pa.pa_cvolume_init(pVolume);
      pa.pa_cvolume_set(pVolume, 2, (volume * PA_VOLUME_NORM).ceil());

      final operation = pa.pa_context_set_sink_volume_by_name(
        _instance!.context,
        name.toNativeUtf8().cast(),
        pVolume,
        nullptr,
        nullptr,
      );

      _instance!.operationCallbackMap[operation] = () {
        _instance!._sendPort.send(SetSinkVolumeResponse(requestId: requestId));
      };
    });
  }

  static _setSourceVolume(int requestId, String name, double volume) {
    using((Arena arena) {
      final pVolume = arena<pa_cvolume>();
      pa.pa_cvolume_init(pVolume);
      pa.pa_cvolume_set(pVolume, 2, (volume * PA_VOLUME_NORM).ceil());

      final operation = pa.pa_context_set_source_volume_by_name(
        _instance!.context,
        name.toNativeUtf8().cast(),
        pVolume,
        nullptr,
        nullptr,
      );
      _instance!.operationCallbackMap[operation] = () {
        _instance!._sendPort
            .send(SetSourceVolumeResponse(requestId: requestId));
      };
    });
  }

  static _setSinkMute(int requestId, String name, bool mute) {
    final operation = pa.pa_context_set_sink_mute_by_name(
      _instance!.context,
      name.toNativeUtf8().cast(),
      mute ? 1 : 0,
      nullptr,
      nullptr,
    );
    _instance!.operationCallbackMap[operation] = () {
      _instance!._sendPort.send(SetSinkMuteResponse(requestId: requestId));
    };
  }

  static _setSourceMute(int requestId, String name, bool mute) {
    final operation = pa.pa_context_set_source_mute_by_name(
      _instance!.context,
      name.toNativeUtf8().cast(),
      mute ? 1 : 0,
      nullptr,
      nullptr,
    );
    _instance!.operationCallbackMap[operation] = () {
      _instance!._sendPort.send(SetSourceMuteResponse(requestId: requestId));
    };
  }

  static _setDefaultSink(int requestId, String name) {
    final operation = pa.pa_context_set_default_sink(
      _instance!.context,
      name.toNativeUtf8().cast(),
      nullptr,
      nullptr,
    );
    _instance!.operationCallbackMap[operation] = () {
      _instance!._sendPort.send(SetDefaultSinkResponse(requestId: requestId));
    };
  }

  static _setDefaultSource(int requestId, String name) {
    final operation = pa.pa_context_set_default_source(
      _instance!.context,
      name.toNativeUtf8().cast(),
      nullptr,
      nullptr,
    );
    _instance!.operationCallbackMap[operation] = () {
      _instance!._sendPort.send(SetDefaultSourceResponse(requestId: requestId));
    };
  }
}
