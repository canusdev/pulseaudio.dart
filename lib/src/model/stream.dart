import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulseaudio/src/generated_bindings.dart';
import 'package:pulseaudio/src/pulse_isolate.dart';

part 'stream.freezed.dart';

@freezed
class PulseAudioStreamCallback with _$PulseAudioStreamCallback {
  const factory PulseAudioStreamCallback({
    required double peak,
    required double volume,
    required int index,
    required int sourceId,
    required int streamId,
    required int deviceIndex,
  }) = _PulseAudioStreamCallback;

  factory PulseAudioStreamCallback.fromNative(
      Pointer<pa_stream> stream, int length, int sourceId, int streamId) {
    final Pointer<Pointer<Void>> ret = calloc<Pointer<Void>>();
    final blength = calloc<Size>()
      ..value = length; // Allocate memory explicitly

    pa.pa_stream_peek(stream, ret, blength);
    if (ret == nullptr) {
      if (length > 0) {
        pa.pa_stream_drop(stream);
      }
    }
    final deviceIndex = pa.pa_stream_get_device_index(stream);
    final index = pa.pa_stream_get_index(stream);

    final Pointer<Float> floatPtr = ret.value.cast<Float>();
    double v = floatPtr[length ~/ sizeOf<Float>() - 1];

    pa.pa_stream_drop(stream);

    print("Val:$v,  S: ${sizeOf<Float>()}");
    return PulseAudioStreamCallback(
        peak: v,
        sourceId: sourceId,
        streamId: streamId,
        index: index,
        deviceIndex: deviceIndex,
        volume: 0);
  }
}
