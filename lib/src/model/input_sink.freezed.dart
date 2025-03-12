// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'input_sink.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PulseAudioInputSink {
  int get index => throw _privateConstructorUsedError;
  int get sink => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get mute => throw _privateConstructorUsedError;
  Map<String, String> get proplist => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Create a copy of PulseAudioInputSink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PulseAudioInputSinkCopyWith<PulseAudioInputSink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PulseAudioInputSinkCopyWith<$Res> {
  factory $PulseAudioInputSinkCopyWith(
          PulseAudioInputSink value, $Res Function(PulseAudioInputSink) then) =
      _$PulseAudioInputSinkCopyWithImpl<$Res, PulseAudioInputSink>;
  @useResult
  $Res call(
      {int index,
      int sink,
      String name,
      bool mute,
      Map<String, String> proplist,
      double volume});
}

/// @nodoc
class _$PulseAudioInputSinkCopyWithImpl<$Res, $Val extends PulseAudioInputSink>
    implements $PulseAudioInputSinkCopyWith<$Res> {
  _$PulseAudioInputSinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PulseAudioInputSink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? sink = null,
    Object? name = null,
    Object? mute = null,
    Object? proplist = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      sink: null == sink
          ? _value.sink
          : sink // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mute: null == mute
          ? _value.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as bool,
      proplist: null == proplist
          ? _value.proplist
          : proplist // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PulseAudioInputSinkImplCopyWith<$Res>
    implements $PulseAudioInputSinkCopyWith<$Res> {
  factory _$$PulseAudioInputSinkImplCopyWith(_$PulseAudioInputSinkImpl value,
          $Res Function(_$PulseAudioInputSinkImpl) then) =
      __$$PulseAudioInputSinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      int sink,
      String name,
      bool mute,
      Map<String, String> proplist,
      double volume});
}

/// @nodoc
class __$$PulseAudioInputSinkImplCopyWithImpl<$Res>
    extends _$PulseAudioInputSinkCopyWithImpl<$Res, _$PulseAudioInputSinkImpl>
    implements _$$PulseAudioInputSinkImplCopyWith<$Res> {
  __$$PulseAudioInputSinkImplCopyWithImpl(_$PulseAudioInputSinkImpl _value,
      $Res Function(_$PulseAudioInputSinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of PulseAudioInputSink
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? sink = null,
    Object? name = null,
    Object? mute = null,
    Object? proplist = null,
    Object? volume = null,
  }) {
    return _then(_$PulseAudioInputSinkImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      sink: null == sink
          ? _value.sink
          : sink // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mute: null == mute
          ? _value.mute
          : mute // ignore: cast_nullable_to_non_nullable
              as bool,
      proplist: null == proplist
          ? _value._proplist
          : proplist // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$PulseAudioInputSinkImpl implements _PulseAudioInputSink {
  const _$PulseAudioInputSinkImpl(
      {required this.index,
      required this.sink,
      required this.name,
      required this.mute,
      required final Map<String, String> proplist,
      required this.volume})
      : _proplist = proplist;

  @override
  final int index;
  @override
  final int sink;
  @override
  final String name;
  @override
  final bool mute;
  final Map<String, String> _proplist;
  @override
  Map<String, String> get proplist {
    if (_proplist is EqualUnmodifiableMapView) return _proplist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_proplist);
  }

  @override
  final double volume;

  @override
  String toString() {
    return 'PulseAudioInputSink(index: $index, sink: $sink, name: $name, mute: $mute, proplist: $proplist, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PulseAudioInputSinkImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.sink, sink) || other.sink == sink) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mute, mute) || other.mute == mute) &&
            const DeepCollectionEquality().equals(other._proplist, _proplist) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, sink, name, mute,
      const DeepCollectionEquality().hash(_proplist), volume);

  /// Create a copy of PulseAudioInputSink
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PulseAudioInputSinkImplCopyWith<_$PulseAudioInputSinkImpl> get copyWith =>
      __$$PulseAudioInputSinkImplCopyWithImpl<_$PulseAudioInputSinkImpl>(
          this, _$identity);
}

abstract class _PulseAudioInputSink implements PulseAudioInputSink {
  const factory _PulseAudioInputSink(
      {required final int index,
      required final int sink,
      required final String name,
      required final bool mute,
      required final Map<String, String> proplist,
      required final double volume}) = _$PulseAudioInputSinkImpl;

  @override
  int get index;
  @override
  int get sink;
  @override
  String get name;
  @override
  bool get mute;
  @override
  Map<String, String> get proplist;
  @override
  double get volume;

  /// Create a copy of PulseAudioInputSink
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PulseAudioInputSinkImplCopyWith<_$PulseAudioInputSinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
