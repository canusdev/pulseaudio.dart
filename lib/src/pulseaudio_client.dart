/// A Dart library for interacting with PulseAudio, a sound server.
///
/// This library provides an interface to PulseAudio, allowing you to retrieve
/// server information, manage sinks (output devices), and manage sources (input
/// devices). The library also provides streams for listening to changes in
/// server information, sinks, and sources.
///
/// To use this library, create an instance of [PulseAudioClient], then call
/// [initialize] to start the communication with the PulseAudio server. After
/// that, you can use the various methods and streams provided by [PulseAudioClient]
/// to interact with the server.
///
/// This library uses Dart's isolates to communicate with the PulseAudio
/// server, which allows for asynchronous communication and prevents blocking
/// the main isolate.
library pulseaudio;

import 'dart:async';
import 'dart:isolate';

import 'package:pulseaudio/src/generated_bindings.dart';
import 'package:pulseaudio/src/model/input_sink.dart';
import 'package:pulseaudio/src/model/isolate_request.dart';
import 'package:pulseaudio/src/model/isolate_response.dart';
import 'package:pulseaudio/src/model/server_info.dart';
import 'package:pulseaudio/src/model/sink.dart';
import 'package:pulseaudio/src/model/source.dart';
import 'package:pulseaudio/src/model/stream.dart';
import 'package:pulseaudio/src/pulse_isolate.dart';

/// A class for interacting with the PulseAudio sound server.
class PulseAudioClient {
  static PulseAudioClient? _instance;

  PulseAudioClient._(this._receiverPort, this._broadcastStream);
  final ReceivePort _receiverPort;
  late final SendPort _sendPort;
  final Stream<dynamic> _broadcastStream;

  int _lastRequestId = 0;

  get newRequestId {
    return _lastRequestId++;
  }

  /// Stream of [PulseAudioServerInfo]
  Stream<PulseAudioServerInfo> get onServerInfoChanged => _broadcastStream
      .where(
        (event) => event is OnServerInfoChangedResponse,
      )
      .cast<OnServerInfoChangedResponse>()
      .map((message) => message.serverInfo);

  /// Stream of [PulseAudioServerInfo]
  Stream<PulseAudioStreamCallback> get onStreamData => _broadcastStream
      .where(
        (event) => event is StreamCallbackResponse,
      )
      .cast<StreamCallbackResponse>()
      .map((message) => message.callback);

  /// Stream of [PulseAudioSink]
  Stream<PulseAudioSink> get onSinkChanged => _broadcastStream
      .where((message) {
        return message is OnSinkChangedResponse;
      })
      .cast<OnSinkChangedResponse>()
      .map((message) {
        return message.sink;
      });

  /// Stream of [PulseAudioSource]
  Stream<PulseAudioSource> get onSourceChanged => _broadcastStream
      .where((message) {
        return message is OnSourceChangedResponse;
      })
      .cast<OnSourceChangedResponse>()
      .map((message) {
        return message.source;
      });

  /// When a sink is removed
  Stream<int> get onSinkRemoved => _broadcastStream
      .where((message) {
        return message is OnSinkRemovedResponse;
      })
      .cast<OnSinkRemovedResponse>()
      .map((message) {
        return message.index;
      });

  /// When a source is removed
  Stream<int> get onSourceRemoved => _broadcastStream
      .where((message) {
        return message is OnSourceRemovedResponse;
      })
      .cast<OnSourceRemovedResponse>()
      .map((message) {
        return message.index;
      });

  final _initializedCompleter = Completer();

  bool _initializizationInProgress = false;

  factory PulseAudioClient() {
    if (_instance != null) return _instance!;
    final receivePort = ReceivePort();
    final broadcast = receivePort.asBroadcastStream();
    _instance = PulseAudioClient._(
      receivePort,
      broadcast,
    );
    return _instance!;
  }

  /// Initializes the PulseAudio connection.
  Future<void> initialize() async {
    if (_initializedCompleter.isCompleted) return;
    if (_initializizationInProgress) return await _initializedCompleter.future;
    _initializizationInProgress = true;

    final listenerInitializationCompleter = Completer();

    Future.wait([
      listenerInitializationCompleter.future,
    ]).then(
      (value) {
        _initializedCompleter.complete();
      },
    );

    _broadcastStream.listen((message) {
      if (message is SendPort) {
        _sendPort = message;
      }
      if (message is OnReadyResponse) {
        _initializedCompleter.complete();
        _initializizationInProgress = false;
      }
    });

    await Isolate.spawn(
      (sendPort) {
        PulseIsolate(sendPort);
      },
      _receiverPort.sendPort,
    );

    await _initializedCompleter.future;
  }

  /// Disposes the PulseAudio connection.
  dispose() {
    _sendPort.send(IsolateRequest.dispose(requestId: newRequestId));
    _receiverPort.close();
    _instance = null;
  }

  /// Get Lists of [PulseAudioSink]
  Future<List<PulseAudioSink>> getSinkList() async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;
    _sendPort.send(IsolateRequest.getSinkList(requestId: requestId));
    final response = await _broadcastStream.firstWhere((message) =>
            message is OnSinkListResponse && message.requestId == requestId)
        as OnSinkListResponse;
    return response.list;
  }

  /// Get Lists of [PulseAudioInputSink]
  Future<List<PulseAudioInputSink>> getInputSinkList() async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;
    _sendPort.send(IsolateRequest.getInputSinkList(requestId: requestId));
    final response = await _broadcastStream.firstWhere((message) =>
        message is OnInputSinkListResponse &&
        message.requestId == requestId) as OnInputSinkListResponse;
    return response.list;
  }

  /// Get Lists of [PulseAudioSource]
  Future<List<PulseAudioSource>> getSourceList() async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;
    _sendPort.send(IsolateRequest.getSourceList(requestId: requestId));
    final response = await _broadcastStream.firstWhere((message) =>
            message is OnSourceListResponse && message.requestId == requestId)
        as OnSourceListResponse;
    return response.list;
  }

  /// Get [PulseAudioSink] by name
  Future<PulseAudioServerInfo> getServerInfo() async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;
    _sendPort.send(IsolateRequest.getServerInfo(requestId: requestId));
    final response = await _broadcastStream.firstWhere((message) =>
            message is OnServerInfoResponse && message.requestId == requestId)
        as OnServerInfoResponse;
    return response.info;
  }

  /// Set mute for sink by name
  Future<void> setSinkMute(String sinkName, bool mute) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;
    _sendPort.send(IsolateRequest.setSinkMute(
        requestId: requestId, sinkName: sinkName, mute: mute));
    await _broadcastStream.firstWhere((message) =>
        message is SetSinkMuteResponse && message.requestId == requestId);
  }

  /// Set volume for sink by name
  Future<void> setSinkVolume(String sinkName, double volume) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;

    _sendPort.send(IsolateRequest.setSinkVolume(
        requestId: requestId, sinkName: sinkName, volume: volume));
    await _broadcastStream.firstWhere((message) =>
        message is SetSinkVolumeResponse && message.requestId == requestId);
  }

  Future<void> setInputSinkMute(int sinkId, bool mute) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;
    _sendPort.send(IsolateRequest.setInputSinkMute(
        requestId: requestId, sinkId: sinkId, mute: mute));
    await _broadcastStream.firstWhere((message) =>
        message is SetSinkMuteResponse && message.requestId == requestId);
  }

  /// Set volume for sink by name
  Future<void> setInputSinkVolume(int sinkId, double volume) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;

    _sendPort.send(IsolateRequest.setInputSinkVolume(
        requestId: requestId, sinkId: sinkId, volume: volume));
    await _broadcastStream.firstWhere((message) =>
        message is SetSinkVolumeResponse && message.requestId == requestId);
  }

  Future<void> propListUpdate(
      pa_update_mode mode, String key, String value) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;

    _sendPort.send(IsolateRequest.propListUpdate(
        requestId: requestId, mode: mode, key: key, value: value));
    await _broadcastStream.firstWhere((message) =>
        message is PropListUpdateResponse && message.requestId == requestId);
  }

  Future<void> createStreamCallback(
      String sourceIndex, String streamIndex) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;

    _sendPort.send(IsolateRequest.createStreamCallback(
        requestId: requestId,
        sinkIndex: streamIndex,
        sourceIndex: sourceIndex));
    await _broadcastStream.firstWhere((message) =>
        message is StreamCallbackResponse && message.requestId == requestId);
  }

  /// set mute for source by name
  Future<void> setSourceMute(String sourceName, bool mute) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;

    _sendPort.send(IsolateRequest.setSourceMute(
        requestId: requestId, sourceName: sourceName, mute: mute));

    await _broadcastStream.firstWhere((message) =>
        message is SetSourceMuteResponse && message.requestId == requestId);
  }

  /// Set volume for source by name
  Future<void> setSourceVolume(String sourceName, double volume) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;

    _sendPort.send(IsolateRequest.setSourceVolume(
        requestId: requestId, sourceName: sourceName, volume: volume));

    await _broadcastStream.firstWhere((message) =>
        message is SetSourceVolumeResponse && message.requestId == requestId);
  }

  /// Set default sink by name
  Future<void> setDefaultSink(String sinkName) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;

    _sendPort.send(IsolateRequest.setDefaultSink(
        requestId: requestId, sinkName: sinkName));

    await _broadcastStream.firstWhere((message) =>
        message is SetDefaultSinkResponse && message.requestId == requestId);
  }

  /// Set default source by name
  Future<void> setDefaultSource(String sourceName) async {
    if (!_initializedCompleter.isCompleted) {
      throw Exception("PulseAudio is not initialized");
    }
    final requestId = newRequestId;

    _sendPort.send(IsolateRequest.setDefaultSource(
        requestId: requestId, sourceName: sourceName));

    await _broadcastStream.firstWhere((message) =>
        message is SetDefaultSourceResponse && message.requestId == requestId);
  }
}
