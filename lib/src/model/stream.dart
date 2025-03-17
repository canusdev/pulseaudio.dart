import 'dart:ffi';
import 'dart:math';

import 'package:ffi/ffi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulseaudio/src/generated_bindings.dart';
import 'package:pulseaudio/src/pulse_isolate.dart';

part 'stream.freezed.dart';

double log10(num x) => log(x) / ln10;

List<double> _calculateVU(List<double> samples) {
  double leftRMS = _calculateRMS(samples, 0, 2);
  double rightRMS = _calculateRMS(samples, 1, 2);

  double leftDB = _toDB(leftRMS);
  double rightDB = _toDB(rightRMS);
  return [leftDB, rightDB];
}

double _calculateRMS(List<double> samples, int channel, int totalChannels) {
  double sum = 0.0;
  int count = 0;

  for (int i = channel; i < samples.length; i += totalChannels) {
    sum += samples[i] * samples[i];
    count++;
  }

  return count > 0 ? sqrt(sum / count) : 0.0;
}

double _toDB(double value) {
  return value > 0 ? 20 * log10(value) : -80.0;
}

@freezed
class PulseAudioStreamCallback with _$PulseAudioStreamCallback {
  const factory PulseAudioStreamCallback({
    required int peak,
    required double volume,
    required double leftDb,
    required double rightDb,
    required int index,
    required int length,
    required List<double> samples,
    required int sourceId,
    required int streamId,
    required int deviceIndex,
  }) = _PulseAudioStreamCallback;

  factory PulseAudioStreamCallback.fromNative(
      Pointer<pa_stream> stream, int length, int sourceId, int streamId) {
    Pointer<Float> ret = malloc<Float>(length ~/ 4);
    final blength = calloc<Size>()
      ..value = length; // Allocate memory explicitly

    var peakVal = pa.pa_stream_peek(stream, ret.cast(), blength);
    if (ret == nullptr) {
      if (length > 0) {
        pa.pa_stream_drop(stream);
      }
    }

    if (length % 8 != 0) {
      pa.pa_stream_drop(stream);
    }

    List<double> samples = [];

    for (int i = 0; i < length; i += 2) {
      samples.add(ret[i]);
    }

    final deviceIndex = pa.pa_stream_get_device_index(stream);
    final index = pa.pa_stream_get_index(stream);

    pa.pa_stream_drop(stream);
    var res = _calculateVU(samples);
    return PulseAudioStreamCallback(
        peak: peakVal,
        leftDb: res[0],
        rightDb: res[1],
        sourceId: sourceId,
        length: length,
        samples: ret.asTypedList(length),
        streamId: streamId,
        index: index,
        deviceIndex: deviceIndex,
        volume: 0);
  }
}
