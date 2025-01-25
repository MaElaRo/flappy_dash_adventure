// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gamepad_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GamepadKey {
  String get xboxAdaptiveControllerKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamepadKeyCopyWith<GamepadKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamepadKeyCopyWith<$Res> {
  factory $GamepadKeyCopyWith(
          GamepadKey value, $Res Function(GamepadKey) then) =
      _$GamepadKeyCopyWithImpl<$Res, GamepadKey>;
  @useResult
  $Res call({String xboxAdaptiveControllerKey});
}

/// @nodoc
class _$GamepadKeyCopyWithImpl<$Res, $Val extends GamepadKey>
    implements $GamepadKeyCopyWith<$Res> {
  _$GamepadKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xboxAdaptiveControllerKey = null,
  }) {
    return _then(_value.copyWith(
      xboxAdaptiveControllerKey: null == xboxAdaptiveControllerKey
          ? _value.xboxAdaptiveControllerKey
          : xboxAdaptiveControllerKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamepadKeyImplCopyWith<$Res>
    implements $GamepadKeyCopyWith<$Res> {
  factory _$$GamepadKeyImplCopyWith(
          _$GamepadKeyImpl value, $Res Function(_$GamepadKeyImpl) then) =
      __$$GamepadKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String xboxAdaptiveControllerKey});
}

/// @nodoc
class __$$GamepadKeyImplCopyWithImpl<$Res>
    extends _$GamepadKeyCopyWithImpl<$Res, _$GamepadKeyImpl>
    implements _$$GamepadKeyImplCopyWith<$Res> {
  __$$GamepadKeyImplCopyWithImpl(
      _$GamepadKeyImpl _value, $Res Function(_$GamepadKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xboxAdaptiveControllerKey = null,
  }) {
    return _then(_$GamepadKeyImpl(
      xboxAdaptiveControllerKey: null == xboxAdaptiveControllerKey
          ? _value.xboxAdaptiveControllerKey
          : xboxAdaptiveControllerKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GamepadKeyImpl extends _GamepadKey {
  const _$GamepadKeyImpl({required this.xboxAdaptiveControllerKey}) : super._();

  @override
  final String xboxAdaptiveControllerKey;

  @override
  String toString() {
    return 'GamepadKey(xboxAdaptiveControllerKey: $xboxAdaptiveControllerKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamepadKeyImpl &&
            (identical(other.xboxAdaptiveControllerKey,
                    xboxAdaptiveControllerKey) ||
                other.xboxAdaptiveControllerKey == xboxAdaptiveControllerKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, xboxAdaptiveControllerKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamepadKeyImplCopyWith<_$GamepadKeyImpl> get copyWith =>
      __$$GamepadKeyImplCopyWithImpl<_$GamepadKeyImpl>(this, _$identity);
}

abstract class _GamepadKey extends GamepadKey {
  const factory _GamepadKey({required final String xboxAdaptiveControllerKey}) =
      _$GamepadKeyImpl;
  const _GamepadKey._() : super._();

  @override
  String get xboxAdaptiveControllerKey;
  @override
  @JsonKey(ignore: true)
  _$$GamepadKeyImplCopyWith<_$GamepadKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
