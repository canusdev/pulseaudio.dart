// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'isolate_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$IsolateRequest {
  int get requestId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IsolateRequestCopyWith<IsolateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsolateRequestCopyWith<$Res> {
  factory $IsolateRequestCopyWith(
          IsolateRequest value, $Res Function(IsolateRequest) then) =
      _$IsolateRequestCopyWithImpl<$Res, IsolateRequest>;
  @useResult
  $Res call({int requestId});
}

/// @nodoc
class _$IsolateRequestCopyWithImpl<$Res, $Val extends IsolateRequest>
    implements $IsolateRequestCopyWith<$Res> {
  _$IsolateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSinkListRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$GetSinkListRequestImplCopyWith(_$GetSinkListRequestImpl value,
          $Res Function(_$GetSinkListRequestImpl) then) =
      __$$GetSinkListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId});
}

/// @nodoc
class __$$GetSinkListRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$GetSinkListRequestImpl>
    implements _$$GetSinkListRequestImplCopyWith<$Res> {
  __$$GetSinkListRequestImplCopyWithImpl(_$GetSinkListRequestImpl _value,
      $Res Function(_$GetSinkListRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
  }) {
    return _then(_$GetSinkListRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSinkListRequestImpl implements GetSinkListRequest {
  const _$GetSinkListRequestImpl({required this.requestId});

  @override
  final int requestId;

  @override
  String toString() {
    return 'IsolateRequest.getSinkList(requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSinkListRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSinkListRequestImplCopyWith<_$GetSinkListRequestImpl> get copyWith =>
      __$$GetSinkListRequestImplCopyWithImpl<_$GetSinkListRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return getSinkList(requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return getSinkList?.call(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (getSinkList != null) {
      return getSinkList(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return getSinkList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return getSinkList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (getSinkList != null) {
      return getSinkList(this);
    }
    return orElse();
  }
}

abstract class GetSinkListRequest implements IsolateRequest {
  const factory GetSinkListRequest({required final int requestId}) =
      _$GetSinkListRequestImpl;

  @override
  int get requestId;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSinkListRequestImplCopyWith<_$GetSinkListRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInputSinkListRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$GetInputSinkListRequestImplCopyWith(
          _$GetInputSinkListRequestImpl value,
          $Res Function(_$GetInputSinkListRequestImpl) then) =
      __$$GetInputSinkListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId});
}

/// @nodoc
class __$$GetInputSinkListRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$GetInputSinkListRequestImpl>
    implements _$$GetInputSinkListRequestImplCopyWith<$Res> {
  __$$GetInputSinkListRequestImplCopyWithImpl(
      _$GetInputSinkListRequestImpl _value,
      $Res Function(_$GetInputSinkListRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
  }) {
    return _then(_$GetInputSinkListRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetInputSinkListRequestImpl implements GetInputSinkListRequest {
  const _$GetInputSinkListRequestImpl({required this.requestId});

  @override
  final int requestId;

  @override
  String toString() {
    return 'IsolateRequest.getInputSinkList(requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInputSinkListRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInputSinkListRequestImplCopyWith<_$GetInputSinkListRequestImpl>
      get copyWith => __$$GetInputSinkListRequestImplCopyWithImpl<
          _$GetInputSinkListRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return getInputSinkList(requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return getInputSinkList?.call(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (getInputSinkList != null) {
      return getInputSinkList(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return getInputSinkList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return getInputSinkList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (getInputSinkList != null) {
      return getInputSinkList(this);
    }
    return orElse();
  }
}

abstract class GetInputSinkListRequest implements IsolateRequest {
  const factory GetInputSinkListRequest({required final int requestId}) =
      _$GetInputSinkListRequestImpl;

  @override
  int get requestId;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInputSinkListRequestImplCopyWith<_$GetInputSinkListRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSourceListRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$GetSourceListRequestImplCopyWith(_$GetSourceListRequestImpl value,
          $Res Function(_$GetSourceListRequestImpl) then) =
      __$$GetSourceListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId});
}

/// @nodoc
class __$$GetSourceListRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$GetSourceListRequestImpl>
    implements _$$GetSourceListRequestImplCopyWith<$Res> {
  __$$GetSourceListRequestImplCopyWithImpl(_$GetSourceListRequestImpl _value,
      $Res Function(_$GetSourceListRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
  }) {
    return _then(_$GetSourceListRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetSourceListRequestImpl implements GetSourceListRequest {
  const _$GetSourceListRequestImpl({required this.requestId});

  @override
  final int requestId;

  @override
  String toString() {
    return 'IsolateRequest.getSourceList(requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSourceListRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSourceListRequestImplCopyWith<_$GetSourceListRequestImpl>
      get copyWith =>
          __$$GetSourceListRequestImplCopyWithImpl<_$GetSourceListRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return getSourceList(requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return getSourceList?.call(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (getSourceList != null) {
      return getSourceList(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return getSourceList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return getSourceList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (getSourceList != null) {
      return getSourceList(this);
    }
    return orElse();
  }
}

abstract class GetSourceListRequest implements IsolateRequest {
  const factory GetSourceListRequest({required final int requestId}) =
      _$GetSourceListRequestImpl;

  @override
  int get requestId;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSourceListRequestImplCopyWith<_$GetSourceListRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetServerInfoRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$GetServerInfoRequestImplCopyWith(_$GetServerInfoRequestImpl value,
          $Res Function(_$GetServerInfoRequestImpl) then) =
      __$$GetServerInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId});
}

/// @nodoc
class __$$GetServerInfoRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$GetServerInfoRequestImpl>
    implements _$$GetServerInfoRequestImplCopyWith<$Res> {
  __$$GetServerInfoRequestImplCopyWithImpl(_$GetServerInfoRequestImpl _value,
      $Res Function(_$GetServerInfoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
  }) {
    return _then(_$GetServerInfoRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetServerInfoRequestImpl implements GetServerInfoRequest {
  const _$GetServerInfoRequestImpl({required this.requestId});

  @override
  final int requestId;

  @override
  String toString() {
    return 'IsolateRequest.getServerInfo(requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetServerInfoRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetServerInfoRequestImplCopyWith<_$GetServerInfoRequestImpl>
      get copyWith =>
          __$$GetServerInfoRequestImplCopyWithImpl<_$GetServerInfoRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return getServerInfo(requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return getServerInfo?.call(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (getServerInfo != null) {
      return getServerInfo(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return getServerInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return getServerInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (getServerInfo != null) {
      return getServerInfo(this);
    }
    return orElse();
  }
}

abstract class GetServerInfoRequest implements IsolateRequest {
  const factory GetServerInfoRequest({required final int requestId}) =
      _$GetServerInfoRequestImpl;

  @override
  int get requestId;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetServerInfoRequestImplCopyWith<_$GetServerInfoRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSinkVolumeRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$SetSinkVolumeRequestImplCopyWith(_$SetSinkVolumeRequestImpl value,
          $Res Function(_$SetSinkVolumeRequestImpl) then) =
      __$$SetSinkVolumeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId, String sinkName, double volume});
}

/// @nodoc
class __$$SetSinkVolumeRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$SetSinkVolumeRequestImpl>
    implements _$$SetSinkVolumeRequestImplCopyWith<$Res> {
  __$$SetSinkVolumeRequestImplCopyWithImpl(_$SetSinkVolumeRequestImpl _value,
      $Res Function(_$SetSinkVolumeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? sinkName = null,
    Object? volume = null,
  }) {
    return _then(_$SetSinkVolumeRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      sinkName: null == sinkName
          ? _value.sinkName
          : sinkName // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetSinkVolumeRequestImpl implements SetSinkVolumeRequest {
  const _$SetSinkVolumeRequestImpl(
      {required this.requestId, required this.sinkName, required this.volume});

  @override
  final int requestId;
  @override
  final String sinkName;
  @override
  final double volume;

  @override
  String toString() {
    return 'IsolateRequest.setSinkVolume(requestId: $requestId, sinkName: $sinkName, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSinkVolumeRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.sinkName, sinkName) ||
                other.sinkName == sinkName) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, sinkName, volume);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSinkVolumeRequestImplCopyWith<_$SetSinkVolumeRequestImpl>
      get copyWith =>
          __$$SetSinkVolumeRequestImplCopyWithImpl<_$SetSinkVolumeRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return setSinkVolume(requestId, sinkName, volume);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return setSinkVolume?.call(requestId, sinkName, volume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (setSinkVolume != null) {
      return setSinkVolume(requestId, sinkName, volume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return setSinkVolume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return setSinkVolume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (setSinkVolume != null) {
      return setSinkVolume(this);
    }
    return orElse();
  }
}

abstract class SetSinkVolumeRequest implements IsolateRequest {
  const factory SetSinkVolumeRequest(
      {required final int requestId,
      required final String sinkName,
      required final double volume}) = _$SetSinkVolumeRequestImpl;

  @override
  int get requestId;
  String get sinkName;
  double get volume;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSinkVolumeRequestImplCopyWith<_$SetSinkVolumeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSourceVolumeRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$SetSourceVolumeRequestImplCopyWith(
          _$SetSourceVolumeRequestImpl value,
          $Res Function(_$SetSourceVolumeRequestImpl) then) =
      __$$SetSourceVolumeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId, String sourceName, double volume});
}

/// @nodoc
class __$$SetSourceVolumeRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$SetSourceVolumeRequestImpl>
    implements _$$SetSourceVolumeRequestImplCopyWith<$Res> {
  __$$SetSourceVolumeRequestImplCopyWithImpl(
      _$SetSourceVolumeRequestImpl _value,
      $Res Function(_$SetSourceVolumeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? sourceName = null,
    Object? volume = null,
  }) {
    return _then(_$SetSourceVolumeRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetSourceVolumeRequestImpl implements SetSourceVolumeRequest {
  const _$SetSourceVolumeRequestImpl(
      {required this.requestId,
      required this.sourceName,
      required this.volume});

  @override
  final int requestId;
  @override
  final String sourceName;
  @override
  final double volume;

  @override
  String toString() {
    return 'IsolateRequest.setSourceVolume(requestId: $requestId, sourceName: $sourceName, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSourceVolumeRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, sourceName, volume);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSourceVolumeRequestImplCopyWith<_$SetSourceVolumeRequestImpl>
      get copyWith => __$$SetSourceVolumeRequestImplCopyWithImpl<
          _$SetSourceVolumeRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return setSourceVolume(requestId, sourceName, volume);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return setSourceVolume?.call(requestId, sourceName, volume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (setSourceVolume != null) {
      return setSourceVolume(requestId, sourceName, volume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return setSourceVolume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return setSourceVolume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (setSourceVolume != null) {
      return setSourceVolume(this);
    }
    return orElse();
  }
}

abstract class SetSourceVolumeRequest implements IsolateRequest {
  const factory SetSourceVolumeRequest(
      {required final int requestId,
      required final String sourceName,
      required final double volume}) = _$SetSourceVolumeRequestImpl;

  @override
  int get requestId;
  String get sourceName;
  double get volume;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSourceVolumeRequestImplCopyWith<_$SetSourceVolumeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PropListUpdateImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$PropListUpdateImplCopyWith(_$PropListUpdateImpl value,
          $Res Function(_$PropListUpdateImpl) then) =
      __$$PropListUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId, pa_update_mode mode, String key, String value});
}

/// @nodoc
class __$$PropListUpdateImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$PropListUpdateImpl>
    implements _$$PropListUpdateImplCopyWith<$Res> {
  __$$PropListUpdateImplCopyWithImpl(
      _$PropListUpdateImpl _value, $Res Function(_$PropListUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? mode = null,
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$PropListUpdateImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as pa_update_mode,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PropListUpdateImpl implements PropListUpdate {
  const _$PropListUpdateImpl(
      {required this.requestId,
      required this.mode,
      required this.key,
      required this.value});

  @override
  final int requestId;
  @override
  final pa_update_mode mode;
  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'IsolateRequest.propListUpdate(requestId: $requestId, mode: $mode, key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropListUpdateImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, mode, key, value);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropListUpdateImplCopyWith<_$PropListUpdateImpl> get copyWith =>
      __$$PropListUpdateImplCopyWithImpl<_$PropListUpdateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return propListUpdate(requestId, mode, key, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return propListUpdate?.call(requestId, mode, key, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (propListUpdate != null) {
      return propListUpdate(requestId, mode, key, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return propListUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return propListUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (propListUpdate != null) {
      return propListUpdate(this);
    }
    return orElse();
  }
}

abstract class PropListUpdate implements IsolateRequest {
  const factory PropListUpdate(
      {required final int requestId,
      required final pa_update_mode mode,
      required final String key,
      required final String value}) = _$PropListUpdateImpl;

  @override
  int get requestId;
  pa_update_mode get mode;
  String get key;
  String get value;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropListUpdateImplCopyWith<_$PropListUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSinkMuteRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$SetSinkMuteRequestImplCopyWith(_$SetSinkMuteRequestImpl value,
          $Res Function(_$SetSinkMuteRequestImpl) then) =
      __$$SetSinkMuteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId, String sinkName, bool mute});
}

/// @nodoc
class __$$SetSinkMuteRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$SetSinkMuteRequestImpl>
    implements _$$SetSinkMuteRequestImplCopyWith<$Res> {
  __$$SetSinkMuteRequestImplCopyWithImpl(_$SetSinkMuteRequestImpl _value,
      $Res Function(_$SetSinkMuteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? sinkName = null,
    Object? mute = null,
  }) {
    return _then(_$SetSinkMuteRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      sinkName: null == sinkName
          ? _value.sinkName
          : sinkName // ignore: cast_nullable_to_non_nullable
              as String,
      mute: null == mute
          ? _value.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetSinkMuteRequestImpl implements SetSinkMuteRequest {
  const _$SetSinkMuteRequestImpl(
      {required this.requestId, required this.sinkName, required this.mute});

  @override
  final int requestId;
  @override
  final String sinkName;
  @override
  final bool mute;

  @override
  String toString() {
    return 'IsolateRequest.setSinkMute(requestId: $requestId, sinkName: $sinkName, mute: $mute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSinkMuteRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.sinkName, sinkName) ||
                other.sinkName == sinkName) &&
            (identical(other.mute, mute) || other.mute == mute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, sinkName, mute);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSinkMuteRequestImplCopyWith<_$SetSinkMuteRequestImpl> get copyWith =>
      __$$SetSinkMuteRequestImplCopyWithImpl<_$SetSinkMuteRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return setSinkMute(requestId, sinkName, mute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return setSinkMute?.call(requestId, sinkName, mute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (setSinkMute != null) {
      return setSinkMute(requestId, sinkName, mute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return setSinkMute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return setSinkMute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (setSinkMute != null) {
      return setSinkMute(this);
    }
    return orElse();
  }
}

abstract class SetSinkMuteRequest implements IsolateRequest {
  const factory SetSinkMuteRequest(
      {required final int requestId,
      required final String sinkName,
      required final bool mute}) = _$SetSinkMuteRequestImpl;

  @override
  int get requestId;
  String get sinkName;
  bool get mute;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSinkMuteRequestImplCopyWith<_$SetSinkMuteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSourceMuteRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$SetSourceMuteRequestImplCopyWith(_$SetSourceMuteRequestImpl value,
          $Res Function(_$SetSourceMuteRequestImpl) then) =
      __$$SetSourceMuteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId, String sourceName, bool mute});
}

/// @nodoc
class __$$SetSourceMuteRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$SetSourceMuteRequestImpl>
    implements _$$SetSourceMuteRequestImplCopyWith<$Res> {
  __$$SetSourceMuteRequestImplCopyWithImpl(_$SetSourceMuteRequestImpl _value,
      $Res Function(_$SetSourceMuteRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? sourceName = null,
    Object? mute = null,
  }) {
    return _then(_$SetSourceMuteRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      mute: null == mute
          ? _value.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetSourceMuteRequestImpl implements SetSourceMuteRequest {
  const _$SetSourceMuteRequestImpl(
      {required this.requestId, required this.sourceName, required this.mute});

  @override
  final int requestId;
  @override
  final String sourceName;
  @override
  final bool mute;

  @override
  String toString() {
    return 'IsolateRequest.setSourceMute(requestId: $requestId, sourceName: $sourceName, mute: $mute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSourceMuteRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.mute, mute) || other.mute == mute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, sourceName, mute);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSourceMuteRequestImplCopyWith<_$SetSourceMuteRequestImpl>
      get copyWith =>
          __$$SetSourceMuteRequestImplCopyWithImpl<_$SetSourceMuteRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return setSourceMute(requestId, sourceName, mute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return setSourceMute?.call(requestId, sourceName, mute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (setSourceMute != null) {
      return setSourceMute(requestId, sourceName, mute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return setSourceMute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return setSourceMute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (setSourceMute != null) {
      return setSourceMute(this);
    }
    return orElse();
  }
}

abstract class SetSourceMuteRequest implements IsolateRequest {
  const factory SetSourceMuteRequest(
      {required final int requestId,
      required final String sourceName,
      required final bool mute}) = _$SetSourceMuteRequestImpl;

  @override
  int get requestId;
  String get sourceName;
  bool get mute;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetSourceMuteRequestImplCopyWith<_$SetSourceMuteRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetDefaultSinkRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$SetDefaultSinkRequestImplCopyWith(
          _$SetDefaultSinkRequestImpl value,
          $Res Function(_$SetDefaultSinkRequestImpl) then) =
      __$$SetDefaultSinkRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId, String sinkName});
}

/// @nodoc
class __$$SetDefaultSinkRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$SetDefaultSinkRequestImpl>
    implements _$$SetDefaultSinkRequestImplCopyWith<$Res> {
  __$$SetDefaultSinkRequestImplCopyWithImpl(_$SetDefaultSinkRequestImpl _value,
      $Res Function(_$SetDefaultSinkRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? sinkName = null,
  }) {
    return _then(_$SetDefaultSinkRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      sinkName: null == sinkName
          ? _value.sinkName
          : sinkName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetDefaultSinkRequestImpl implements SetDefaultSinkRequest {
  const _$SetDefaultSinkRequestImpl(
      {required this.requestId, required this.sinkName});

  @override
  final int requestId;
  @override
  final String sinkName;

  @override
  String toString() {
    return 'IsolateRequest.setDefaultSink(requestId: $requestId, sinkName: $sinkName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDefaultSinkRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.sinkName, sinkName) ||
                other.sinkName == sinkName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, sinkName);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDefaultSinkRequestImplCopyWith<_$SetDefaultSinkRequestImpl>
      get copyWith => __$$SetDefaultSinkRequestImplCopyWithImpl<
          _$SetDefaultSinkRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return setDefaultSink(requestId, sinkName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return setDefaultSink?.call(requestId, sinkName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (setDefaultSink != null) {
      return setDefaultSink(requestId, sinkName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return setDefaultSink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return setDefaultSink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (setDefaultSink != null) {
      return setDefaultSink(this);
    }
    return orElse();
  }
}

abstract class SetDefaultSinkRequest implements IsolateRequest {
  const factory SetDefaultSinkRequest(
      {required final int requestId,
      required final String sinkName}) = _$SetDefaultSinkRequestImpl;

  @override
  int get requestId;
  String get sinkName;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDefaultSinkRequestImplCopyWith<_$SetDefaultSinkRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetDefaultSourceRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$SetDefaultSourceRequestImplCopyWith(
          _$SetDefaultSourceRequestImpl value,
          $Res Function(_$SetDefaultSourceRequestImpl) then) =
      __$$SetDefaultSourceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId, String sourceName});
}

/// @nodoc
class __$$SetDefaultSourceRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$SetDefaultSourceRequestImpl>
    implements _$$SetDefaultSourceRequestImplCopyWith<$Res> {
  __$$SetDefaultSourceRequestImplCopyWithImpl(
      _$SetDefaultSourceRequestImpl _value,
      $Res Function(_$SetDefaultSourceRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? sourceName = null,
  }) {
    return _then(_$SetDefaultSourceRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceName: null == sourceName
          ? _value.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetDefaultSourceRequestImpl implements SetDefaultSourceRequest {
  const _$SetDefaultSourceRequestImpl(
      {required this.requestId, required this.sourceName});

  @override
  final int requestId;
  @override
  final String sourceName;

  @override
  String toString() {
    return 'IsolateRequest.setDefaultSource(requestId: $requestId, sourceName: $sourceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDefaultSourceRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId, sourceName);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDefaultSourceRequestImplCopyWith<_$SetDefaultSourceRequestImpl>
      get copyWith => __$$SetDefaultSourceRequestImplCopyWithImpl<
          _$SetDefaultSourceRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return setDefaultSource(requestId, sourceName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return setDefaultSource?.call(requestId, sourceName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (setDefaultSource != null) {
      return setDefaultSource(requestId, sourceName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return setDefaultSource(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return setDefaultSource?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (setDefaultSource != null) {
      return setDefaultSource(this);
    }
    return orElse();
  }
}

abstract class SetDefaultSourceRequest implements IsolateRequest {
  const factory SetDefaultSourceRequest(
      {required final int requestId,
      required final String sourceName}) = _$SetDefaultSourceRequestImpl;

  @override
  int get requestId;
  String get sourceName;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDefaultSourceRequestImplCopyWith<_$SetDefaultSourceRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisposeRequestImplCopyWith<$Res>
    implements $IsolateRequestCopyWith<$Res> {
  factory _$$DisposeRequestImplCopyWith(_$DisposeRequestImpl value,
          $Res Function(_$DisposeRequestImpl) then) =
      __$$DisposeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int requestId});
}

/// @nodoc
class __$$DisposeRequestImplCopyWithImpl<$Res>
    extends _$IsolateRequestCopyWithImpl<$Res, _$DisposeRequestImpl>
    implements _$$DisposeRequestImplCopyWith<$Res> {
  __$$DisposeRequestImplCopyWithImpl(
      _$DisposeRequestImpl _value, $Res Function(_$DisposeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
  }) {
    return _then(_$DisposeRequestImpl(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DisposeRequestImpl implements DisposeRequest {
  const _$DisposeRequestImpl({required this.requestId});

  @override
  final int requestId;

  @override
  String toString() {
    return 'IsolateRequest.dispose(requestId: $requestId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisposeRequestImpl &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestId);

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisposeRequestImplCopyWith<_$DisposeRequestImpl> get copyWith =>
      __$$DisposeRequestImplCopyWithImpl<_$DisposeRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int requestId) getSinkList,
    required TResult Function(int requestId) getInputSinkList,
    required TResult Function(int requestId) getSourceList,
    required TResult Function(int requestId) getServerInfo,
    required TResult Function(int requestId, String sinkName, double volume)
        setSinkVolume,
    required TResult Function(int requestId, String sourceName, double volume)
        setSourceVolume,
    required TResult Function(
            int requestId, pa_update_mode mode, String key, String value)
        propListUpdate,
    required TResult Function(int requestId, String sinkName, bool mute)
        setSinkMute,
    required TResult Function(int requestId, String sourceName, bool mute)
        setSourceMute,
    required TResult Function(int requestId, String sinkName) setDefaultSink,
    required TResult Function(int requestId, String sourceName)
        setDefaultSource,
    required TResult Function(int requestId) dispose,
  }) {
    return dispose(requestId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int requestId)? getSinkList,
    TResult? Function(int requestId)? getInputSinkList,
    TResult? Function(int requestId)? getSourceList,
    TResult? Function(int requestId)? getServerInfo,
    TResult? Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult? Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult? Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult? Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult? Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult? Function(int requestId, String sinkName)? setDefaultSink,
    TResult? Function(int requestId, String sourceName)? setDefaultSource,
    TResult? Function(int requestId)? dispose,
  }) {
    return dispose?.call(requestId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int requestId)? getSinkList,
    TResult Function(int requestId)? getInputSinkList,
    TResult Function(int requestId)? getSourceList,
    TResult Function(int requestId)? getServerInfo,
    TResult Function(int requestId, String sinkName, double volume)?
        setSinkVolume,
    TResult Function(int requestId, String sourceName, double volume)?
        setSourceVolume,
    TResult Function(
            int requestId, pa_update_mode mode, String key, String value)?
        propListUpdate,
    TResult Function(int requestId, String sinkName, bool mute)? setSinkMute,
    TResult Function(int requestId, String sourceName, bool mute)?
        setSourceMute,
    TResult Function(int requestId, String sinkName)? setDefaultSink,
    TResult Function(int requestId, String sourceName)? setDefaultSource,
    TResult Function(int requestId)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(requestId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSinkListRequest value) getSinkList,
    required TResult Function(GetInputSinkListRequest value) getInputSinkList,
    required TResult Function(GetSourceListRequest value) getSourceList,
    required TResult Function(GetServerInfoRequest value) getServerInfo,
    required TResult Function(SetSinkVolumeRequest value) setSinkVolume,
    required TResult Function(SetSourceVolumeRequest value) setSourceVolume,
    required TResult Function(PropListUpdate value) propListUpdate,
    required TResult Function(SetSinkMuteRequest value) setSinkMute,
    required TResult Function(SetSourceMuteRequest value) setSourceMute,
    required TResult Function(SetDefaultSinkRequest value) setDefaultSink,
    required TResult Function(SetDefaultSourceRequest value) setDefaultSource,
    required TResult Function(DisposeRequest value) dispose,
  }) {
    return dispose(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSinkListRequest value)? getSinkList,
    TResult? Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult? Function(GetSourceListRequest value)? getSourceList,
    TResult? Function(GetServerInfoRequest value)? getServerInfo,
    TResult? Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult? Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult? Function(PropListUpdate value)? propListUpdate,
    TResult? Function(SetSinkMuteRequest value)? setSinkMute,
    TResult? Function(SetSourceMuteRequest value)? setSourceMute,
    TResult? Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult? Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult? Function(DisposeRequest value)? dispose,
  }) {
    return dispose?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSinkListRequest value)? getSinkList,
    TResult Function(GetInputSinkListRequest value)? getInputSinkList,
    TResult Function(GetSourceListRequest value)? getSourceList,
    TResult Function(GetServerInfoRequest value)? getServerInfo,
    TResult Function(SetSinkVolumeRequest value)? setSinkVolume,
    TResult Function(SetSourceVolumeRequest value)? setSourceVolume,
    TResult Function(PropListUpdate value)? propListUpdate,
    TResult Function(SetSinkMuteRequest value)? setSinkMute,
    TResult Function(SetSourceMuteRequest value)? setSourceMute,
    TResult Function(SetDefaultSinkRequest value)? setDefaultSink,
    TResult Function(SetDefaultSourceRequest value)? setDefaultSource,
    TResult Function(DisposeRequest value)? dispose,
    required TResult orElse(),
  }) {
    if (dispose != null) {
      return dispose(this);
    }
    return orElse();
  }
}

abstract class DisposeRequest implements IsolateRequest {
  const factory DisposeRequest({required final int requestId}) =
      _$DisposeRequestImpl;

  @override
  int get requestId;

  /// Create a copy of IsolateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisposeRequestImplCopyWith<_$DisposeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
