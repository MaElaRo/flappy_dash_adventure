// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameSettingsState {
  GameSettings get gameSettings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function(GameSettings gameSettings) inProgress,
    required TResult Function(GameSettings gameSettings) success,
    required TResult Function(GameSettings gameSettings) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function(GameSettings gameSettings)? inProgress,
    TResult? Function(GameSettings gameSettings)? success,
    TResult? Function(GameSettings gameSettings)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function(GameSettings gameSettings)? inProgress,
    TResult Function(GameSettings gameSettings)? success,
    TResult Function(GameSettings gameSettings)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameSettingsStateCopyWith<GameSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSettingsStateCopyWith<$Res> {
  factory $GameSettingsStateCopyWith(
          GameSettingsState value, $Res Function(GameSettingsState) then) =
      _$GameSettingsStateCopyWithImpl<$Res, GameSettingsState>;
  @useResult
  $Res call({GameSettings gameSettings});

  $GameSettingsCopyWith<$Res> get gameSettings;
}

/// @nodoc
class _$GameSettingsStateCopyWithImpl<$Res, $Val extends GameSettingsState>
    implements $GameSettingsStateCopyWith<$Res> {
  _$GameSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSettings = null,
  }) {
    return _then(_value.copyWith(
      gameSettings: null == gameSettings
          ? _value.gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as GameSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameSettingsCopyWith<$Res> get gameSettings {
    return $GameSettingsCopyWith<$Res>(_value.gameSettings, (value) {
      return _then(_value.copyWith(gameSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GameSettingsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameSettings gameSettings});

  @override
  $GameSettingsCopyWith<$Res> get gameSettings;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GameSettingsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSettings = null,
  }) {
    return _then(_$InitialImpl(
      gameSettings: null == gameSettings
          ? _value.gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as GameSettings,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl({this.gameSettings = const GameSettings()});

  @override
  @JsonKey()
  final GameSettings gameSettings;

  @override
  String toString() {
    return 'GameSettingsState.initial(gameSettings: $gameSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.gameSettings, gameSettings) ||
                other.gameSettings == gameSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function(GameSettings gameSettings) inProgress,
    required TResult Function(GameSettings gameSettings) success,
    required TResult Function(GameSettings gameSettings) failure,
  }) {
    return initial(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function(GameSettings gameSettings)? inProgress,
    TResult? Function(GameSettings gameSettings)? success,
    TResult? Function(GameSettings gameSettings)? failure,
  }) {
    return initial?.call(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function(GameSettings gameSettings)? inProgress,
    TResult Function(GameSettings gameSettings)? success,
    TResult Function(GameSettings gameSettings)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(gameSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GameSettingsState {
  const factory _Initial({final GameSettings gameSettings}) = _$InitialImpl;

  @override
  GameSettings get gameSettings;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressImplCopyWith<$Res>
    implements $GameSettingsStateCopyWith<$Res> {
  factory _$$InProgressImplCopyWith(
          _$InProgressImpl value, $Res Function(_$InProgressImpl) then) =
      __$$InProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameSettings gameSettings});

  @override
  $GameSettingsCopyWith<$Res> get gameSettings;
}

/// @nodoc
class __$$InProgressImplCopyWithImpl<$Res>
    extends _$GameSettingsStateCopyWithImpl<$Res, _$InProgressImpl>
    implements _$$InProgressImplCopyWith<$Res> {
  __$$InProgressImplCopyWithImpl(
      _$InProgressImpl _value, $Res Function(_$InProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSettings = null,
  }) {
    return _then(_$InProgressImpl(
      gameSettings: null == gameSettings
          ? _value.gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as GameSettings,
    ));
  }
}

/// @nodoc

class _$InProgressImpl implements _InProgress {
  const _$InProgressImpl({this.gameSettings = const GameSettings()});

  @override
  @JsonKey()
  final GameSettings gameSettings;

  @override
  String toString() {
    return 'GameSettingsState.inProgress(gameSettings: $gameSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressImpl &&
            (identical(other.gameSettings, gameSettings) ||
                other.gameSettings == gameSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      __$$InProgressImplCopyWithImpl<_$InProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function(GameSettings gameSettings) inProgress,
    required TResult Function(GameSettings gameSettings) success,
    required TResult Function(GameSettings gameSettings) failure,
  }) {
    return inProgress(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function(GameSettings gameSettings)? inProgress,
    TResult? Function(GameSettings gameSettings)? success,
    TResult? Function(GameSettings gameSettings)? failure,
  }) {
    return inProgress?.call(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function(GameSettings gameSettings)? inProgress,
    TResult Function(GameSettings gameSettings)? success,
    TResult Function(GameSettings gameSettings)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(gameSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements GameSettingsState {
  const factory _InProgress({final GameSettings gameSettings}) =
      _$InProgressImpl;

  @override
  GameSettings get gameSettings;
  @override
  @JsonKey(ignore: true)
  _$$InProgressImplCopyWith<_$InProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $GameSettingsStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameSettings gameSettings});

  @override
  $GameSettingsCopyWith<$Res> get gameSettings;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$GameSettingsStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSettings = null,
  }) {
    return _then(_$SuccessImpl(
      gameSettings: null == gameSettings
          ? _value.gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as GameSettings,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({required this.gameSettings});

  @override
  final GameSettings gameSettings;

  @override
  String toString() {
    return 'GameSettingsState.success(gameSettings: $gameSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.gameSettings, gameSettings) ||
                other.gameSettings == gameSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function(GameSettings gameSettings) inProgress,
    required TResult Function(GameSettings gameSettings) success,
    required TResult Function(GameSettings gameSettings) failure,
  }) {
    return success(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function(GameSettings gameSettings)? inProgress,
    TResult? Function(GameSettings gameSettings)? success,
    TResult? Function(GameSettings gameSettings)? failure,
  }) {
    return success?.call(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function(GameSettings gameSettings)? inProgress,
    TResult Function(GameSettings gameSettings)? success,
    TResult Function(GameSettings gameSettings)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(gameSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements GameSettingsState {
  const factory _Success({required final GameSettings gameSettings}) =
      _$SuccessImpl;

  @override
  GameSettings get gameSettings;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $GameSettingsStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameSettings gameSettings});

  @override
  $GameSettingsCopyWith<$Res> get gameSettings;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$GameSettingsStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSettings = null,
  }) {
    return _then(_$FailureImpl(
      gameSettings: null == gameSettings
          ? _value.gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as GameSettings,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({this.gameSettings = const GameSettings()});

  @override
  @JsonKey()
  final GameSettings gameSettings;

  @override
  String toString() {
    return 'GameSettingsState.failure(gameSettings: $gameSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.gameSettings, gameSettings) ||
                other.gameSettings == gameSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GameSettings gameSettings) initial,
    required TResult Function(GameSettings gameSettings) inProgress,
    required TResult Function(GameSettings gameSettings) success,
    required TResult Function(GameSettings gameSettings) failure,
  }) {
    return failure(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GameSettings gameSettings)? initial,
    TResult? Function(GameSettings gameSettings)? inProgress,
    TResult? Function(GameSettings gameSettings)? success,
    TResult? Function(GameSettings gameSettings)? failure,
  }) {
    return failure?.call(gameSettings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GameSettings gameSettings)? initial,
    TResult Function(GameSettings gameSettings)? inProgress,
    TResult Function(GameSettings gameSettings)? success,
    TResult Function(GameSettings gameSettings)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(gameSettings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GameSettingsState {
  const factory _Failure({final GameSettings gameSettings}) = _$FailureImpl;

  @override
  GameSettings get gameSettings;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
