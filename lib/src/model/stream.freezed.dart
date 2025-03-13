// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PulseAudioStreamCallback {
  double get peak => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  int get deviceIndex => throw _privateConstructorUsedError;

  /// Create a copy of PulseAudioStreamCallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PulseAudioStreamCallbackCopyWith<PulseAudioStreamCallback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PulseAudioStreamCallbackCopyWith<$Res> {
  factory $PulseAudioStreamCallbackCopyWith(PulseAudioStreamCallback value,
          $Res Function(PulseAudioStreamCallback) then) =
      _$PulseAudioStreamCallbackCopyWithImpl<$Res, PulseAudioStreamCallback>;
  @useResult
  $Res call({double peak, double volume, int deviceIndex});
}

/// @nodoc
class _$PulseAudioStreamCallbackCopyWithImpl<$Res,
        $Val extends PulseAudioStreamCallback>
    implements $PulseAudioStreamCallbackCopyWith<$Res> {
  _$PulseAudioStreamCallbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PulseAudioStreamCallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peak = null,
    Object? volume = null,
    Object? deviceIndex = null,
  }) {
    return _then(_value.copyWith(
      peak: null == peak
          ? _value.peak
          : peak // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      deviceIndex: null == deviceIndex
          ? _value.deviceIndex
          : deviceIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PulseAudioStreamCallbackImplCopyWith<$Res>
    implements $PulseAudioStreamCallbackCopyWith<$Res> {
  factory _$$PulseAudioStreamCallbackImplCopyWith(
          _$PulseAudioStreamCallbackImpl value,
          $Res Function(_$PulseAudioStreamCallbackImpl) then) =
      __$$PulseAudioStreamCallbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double peak, double volume, int deviceIndex});
}

/// @nodoc
class __$$PulseAudioStreamCallbackImplCopyWithImpl<$Res>
    extends _$PulseAudioStreamCallbackCopyWithImpl<$Res,
        _$PulseAudioStreamCallbackImpl>
    implements _$$PulseAudioStreamCallbackImplCopyWith<$Res> {
  __$$PulseAudioStreamCallbackImplCopyWithImpl(
      _$PulseAudioStreamCallbackImpl _value,
      $Res Function(_$PulseAudioStreamCallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of PulseAudioStreamCallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peak = null,
    Object? volume = null,
    Object? deviceIndex = null,
  }) {
    return _then(_$PulseAudioStreamCallbackImpl(
      peak: null == peak
          ? _value.peak
          : peak // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      deviceIndex: null == deviceIndex
          ? _value.deviceIndex
          : deviceIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PulseAudioStreamCallbackImpl implements _PulseAudioStreamCallback {
  const _$PulseAudioStreamCallbackImpl(
      {required this.peak, required this.volume, required this.deviceIndex});

  @override
  final double peak;
  @override
  final double volume;
  @override
  final int deviceIndex;

  @override
  String toString() {
    return 'PulseAudioStreamCallback(peak: $peak, volume: $volume, deviceIndex: $deviceIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PulseAudioStreamCallbackImpl &&
            (identical(other.peak, peak) || other.peak == peak) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.deviceIndex, deviceIndex) ||
                other.deviceIndex == deviceIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, peak, volume, deviceIndex);

  /// Create a copy of PulseAudioStreamCallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PulseAudioStreamCallbackImplCopyWith<_$PulseAudioStreamCallbackImpl>
      get copyWith => __$$PulseAudioStreamCallbackImplCopyWithImpl<
          _$PulseAudioStreamCallbackImpl>(this, _$identity);
}

abstract class _PulseAudioStreamCallback implements PulseAudioStreamCallback {
  const factory _PulseAudioStreamCallback(
      {required final double peak,
      required final double volume,
      required final int deviceIndex}) = _$PulseAudioStreamCallbackImpl;

  @override
  double get peak;
  @override
  double get volume;
  @override
  int get deviceIndex;

  /// Create a copy of PulseAudioStreamCallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PulseAudioStreamCallbackImplCopyWith<_$PulseAudioStreamCallbackImpl>
      get copyWith => throw _privateConstructorUsedError;
}
