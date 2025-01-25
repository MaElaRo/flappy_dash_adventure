// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gamepads_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GamepadsState {
  List<GamepadController> get gamepads => throw _privateConstructorUsedError;
  GamepadEvent? get lastEvent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamepadsStateCopyWith<GamepadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamepadsStateCopyWith<$Res> {
  factory $GamepadsStateCopyWith(
          GamepadsState value, $Res Function(GamepadsState) then) =
      _$GamepadsStateCopyWithImpl<$Res, GamepadsState>;
  @useResult
  $Res call({List<GamepadController> gamepads, GamepadEvent? lastEvent});
}

/// @nodoc
class _$GamepadsStateCopyWithImpl<$Res, $Val extends GamepadsState>
    implements $GamepadsStateCopyWith<$Res> {
  _$GamepadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gamepads = null,
    Object? lastEvent = freezed,
  }) {
    return _then(_value.copyWith(
      gamepads: null == gamepads
          ? _value.gamepads
          : gamepads // ignore: cast_nullable_to_non_nullable
              as List<GamepadController>,
      lastEvent: freezed == lastEvent
          ? _value.lastEvent
          : lastEvent // ignore: cast_nullable_to_non_nullable
              as GamepadEvent?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamepadsStateImplCopyWith<$Res>
    implements $GamepadsStateCopyWith<$Res> {
  factory _$$GamepadsStateImplCopyWith(
          _$GamepadsStateImpl value, $Res Function(_$GamepadsStateImpl) then) =
      __$$GamepadsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GamepadController> gamepads, GamepadEvent? lastEvent});
}

/// @nodoc
class __$$GamepadsStateImplCopyWithImpl<$Res>
    extends _$GamepadsStateCopyWithImpl<$Res, _$GamepadsStateImpl>
    implements _$$GamepadsStateImplCopyWith<$Res> {
  __$$GamepadsStateImplCopyWithImpl(
      _$GamepadsStateImpl _value, $Res Function(_$GamepadsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gamepads = null,
    Object? lastEvent = freezed,
  }) {
    return _then(_$GamepadsStateImpl(
      gamepads: null == gamepads
          ? _value._gamepads
          : gamepads // ignore: cast_nullable_to_non_nullable
              as List<GamepadController>,
      lastEvent: freezed == lastEvent
          ? _value.lastEvent
          : lastEvent // ignore: cast_nullable_to_non_nullable
              as GamepadEvent?,
    ));
  }
}

/// @nodoc

class _$GamepadsStateImpl implements _GamepadsState {
  const _$GamepadsStateImpl(
      {final List<GamepadController> gamepads = const [], this.lastEvent})
      : _gamepads = gamepads;

  final List<GamepadController> _gamepads;
  @override
  @JsonKey()
  List<GamepadController> get gamepads {
    if (_gamepads is EqualUnmodifiableListView) return _gamepads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gamepads);
  }

  @override
  final GamepadEvent? lastEvent;

  @override
  String toString() {
    return 'GamepadsState(gamepads: $gamepads, lastEvent: $lastEvent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamepadsStateImpl &&
            const DeepCollectionEquality().equals(other._gamepads, _gamepads) &&
            (identical(other.lastEvent, lastEvent) ||
                other.lastEvent == lastEvent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_gamepads), lastEvent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamepadsStateImplCopyWith<_$GamepadsStateImpl> get copyWith =>
      __$$GamepadsStateImplCopyWithImpl<_$GamepadsStateImpl>(this, _$identity);
}

abstract class _GamepadsState implements GamepadsState {
  const factory _GamepadsState(
      {final List<GamepadController> gamepads,
      final GamepadEvent? lastEvent}) = _$GamepadsStateImpl;

  @override
  List<GamepadController> get gamepads;
  @override
  GamepadEvent? get lastEvent;
  @override
  @JsonKey(ignore: true)
  _$$GamepadsStateImplCopyWith<_$GamepadsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
