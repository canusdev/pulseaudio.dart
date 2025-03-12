import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulseaudio/src/generated_bindings.dart';

part 'isolate_request.freezed.dart';

@freezed
sealed class IsolateRequest with _$IsolateRequest {
  const factory IsolateRequest.getSinkList({required int requestId}) =
      GetSinkListRequest;
  const factory IsolateRequest.getInputSinkList({required int requestId}) =
      GetInputSinkListRequest;
  const factory IsolateRequest.getSourceList({required int requestId}) =
      GetSourceListRequest;
  const factory IsolateRequest.getServerInfo({required int requestId}) =
      GetServerInfoRequest;
  const factory IsolateRequest.setSinkVolume(
      {required int requestId,
      required String sinkName,
      required double volume}) = SetSinkVolumeRequest;
  const factory IsolateRequest.setSourceVolume(
      {required int requestId,
      required String sourceName,
      required double volume}) = SetSourceVolumeRequest;
  const factory IsolateRequest.propListUpdate(
      {required int requestId,
      required pa_update_mode mode,
      required String key,
      required String value}) = PropListUpdate;
  const factory IsolateRequest.setSinkMute(
      {required int requestId,
      required String sinkName,
      required bool mute}) = SetSinkMuteRequest;
  const factory IsolateRequest.setSourceMute(
      {required int requestId,
      required String sourceName,
      required bool mute}) = SetSourceMuteRequest;
  const factory IsolateRequest.setDefaultSink(
      {required int requestId,
      required String sinkName}) = SetDefaultSinkRequest;
  const factory IsolateRequest.setDefaultSource(
      {required int requestId,
      required String sourceName}) = SetDefaultSourceRequest;
  const factory IsolateRequest.dispose({required int requestId}) =
      DisposeRequest;
}
