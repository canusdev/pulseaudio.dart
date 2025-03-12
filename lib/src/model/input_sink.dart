import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulseaudio/src/generated_bindings.dart';
import 'package:pulseaudio/src/pulse_isolate.dart';

part 'input_sink.freezed.dart';

@freezed
class PulseAudioInputSink with _$PulseAudioInputSink {
  const factory PulseAudioInputSink({
    required int index,
    required int sink,
    required String name,
    required bool mute,
    required Map<String, String> proplist,
    required double volume,
  }) = _PulseAudioInputSink;

  factory PulseAudioInputSink.fromNative(pa_sink_input_info sinkinput) {
    final Pointer<pa_cvolume> volumePointer =
        calloc<pa_cvolume>(); // Allocate memory for pa_cvolume
    volumePointer.ref =
        sinkinput.volume; // Copy the struct value to the allocated memory
    final volumeAvg = pa.pa_cvolume_avg(volumePointer) / PA_VOLUME_NORM;
    calloc.free(volumePointer); // Free the allocated memory
    final Pointer<Pointer<Void>> ret = calloc<Pointer<Void>>();
    var key = pa.pa_proplist_iterate(sinkinput.proplist, ret);
    var resKey = key.cast<Utf8>().toDartString();
    final Map<String, String> properties = {};
    while (resKey != "") {
      final Pointer<Char> value = pa.pa_proplist_gets(sinkinput.proplist, key);
      properties.addAll({resKey: value.cast<Utf8>().toDartString()});
      key = pa.pa_proplist_iterate(sinkinput.proplist, ret);
      if (key == nullptr) {
        resKey = "";
        continue;
      }
      resKey = key.cast<Utf8>().toDartString();
    }
    calloc.free(ret);
    return PulseAudioInputSink(
      index: sinkinput.index,
      sink: sinkinput.sink,
      proplist: properties,
      name: sinkinput.name.cast<Utf8>().toDartString(),
      mute: sinkinput.mute == 1,
      volume: volumeAvg,
    );
  }
}
