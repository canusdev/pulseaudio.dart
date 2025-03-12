import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulseaudio/src/model/input_sink.dart';
import 'package:pulseaudio/src/model/server_info.dart';
import 'package:pulseaudio/src/model/sink.dart';
import 'package:pulseaudio/src/model/source.dart';

part 'isolate_response.freezed.dart';

@freezed
sealed class IsolateResponse with _$IsolateResponse {
  const factory IsolateResponse.ready() = OnReadyResponse;
  const factory IsolateResponse.onServerInfoChanged(
      {required PulseAudioServerInfo serverInfo}) = OnServerInfoChangedResponse;
  const factory IsolateResponse.onSinkChanged({required PulseAudioSink sink}) =
      OnSinkChangedResponse;
  const factory IsolateResponse.onSinkRemoved({required int index}) =
      OnSinkRemovedResponse;
  const factory IsolateResponse.onSourceChanged(
      {required PulseAudioSource source}) = OnSourceChangedResponse;
  const factory IsolateResponse.onSourceRemoved({required int index}) =
      OnSourceRemovedResponse;
  const factory IsolateResponse.onSinkList(
      {required int requestId,
      required List<PulseAudioSink> list}) = OnSinkListResponse;
  const factory IsolateResponse.onInputSinkList(
      {required int requestId,
      required List<PulseAudioInputSink> list}) = OnInputSinkListResponse;
  const factory IsolateResponse.onSourceList(
      {required int requestId,
      required List<PulseAudioSource> list}) = OnSourceListResponse;
  const factory IsolateResponse.onServerInfo(
      {required int requestId,
      required PulseAudioServerInfo info}) = OnServerInfoResponse;
  const factory IsolateResponse.setSinkVolume({
    required int requestId,
  }) = SetSinkVolumeResponse;
  const factory IsolateResponse.setSourceVolume({
    required int requestId,
  }) = SetSourceVolumeResponse;
  const factory IsolateResponse.setSinkMute({
    required int requestId,
  }) = SetSinkMuteResponse;
  const factory IsolateResponse.setSourceMute({
    required int requestId,
  }) = SetSourceMuteResponse;
  const factory IsolateResponse.setDefaultSink({
    required int requestId,
  }) = SetDefaultSinkResponse;
  const factory IsolateResponse.setDefaultSource({
    required int requestId,
  }) = SetDefaultSourceResponse;
  const factory IsolateResponse.propListUpdate({
    required int requestId,
  }) = PropListUpdateResponse;
}
