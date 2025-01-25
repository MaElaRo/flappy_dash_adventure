// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GameSettings _$GameSettingsFromJson(Map<String, dynamic> json) {
  return _GameSettings.fromJson(json);
}

/// @nodoc
mixin _$GameSettings {
  GameplaySettings get gameplay => throw _privateConstructorUsedError;
  GamepadSettings get gamepad => throw _privateConstructorUsedError;
  VideoSettings get video => throw _privateConstructorUsedError;
  AudioSettings get audio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameSettingsCopyWith<GameSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameSettingsCopyWith<$Res> {
  factory $GameSettingsCopyWith(
          GameSettings value, $Res Function(GameSettings) then) =
      _$GameSettingsCopyWithImpl<$Res, GameSettings>;
  @useResult
  $Res call(
      {GameplaySettings gameplay,
      GamepadSettings gamepad,
      VideoSettings video,
      AudioSettings audio});

  $GameplaySettingsCopyWith<$Res> get gameplay;
  $GamepadSettingsCopyWith<$Res> get gamepad;
  $VideoSettingsCopyWith<$Res> get video;
  $AudioSettingsCopyWith<$Res> get audio;
}

/// @nodoc
class _$GameSettingsCopyWithImpl<$Res, $Val extends GameSettings>
    implements $GameSettingsCopyWith<$Res> {
  _$GameSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameplay = null,
    Object? gamepad = null,
    Object? video = null,
    Object? audio = null,
  }) {
    return _then(_value.copyWith(
      gameplay: null == gameplay
          ? _value.gameplay
          : gameplay // ignore: cast_nullable_to_non_nullable
              as GameplaySettings,
      gamepad: null == gamepad
          ? _value.gamepad
          : gamepad // ignore: cast_nullable_to_non_nullable
              as GamepadSettings,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoSettings,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioSettings,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GameplaySettingsCopyWith<$Res> get gameplay {
    return $GameplaySettingsCopyWith<$Res>(_value.gameplay, (value) {
      return _then(_value.copyWith(gameplay: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GamepadSettingsCopyWith<$Res> get gamepad {
    return $GamepadSettingsCopyWith<$Res>(_value.gamepad, (value) {
      return _then(_value.copyWith(gamepad: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoSettingsCopyWith<$Res> get video {
    return $VideoSettingsCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioSettingsCopyWith<$Res> get audio {
    return $AudioSettingsCopyWith<$Res>(_value.audio, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameSettingsImplCopyWith<$Res>
    implements $GameSettingsCopyWith<$Res> {
  factory _$$GameSettingsImplCopyWith(
          _$GameSettingsImpl value, $Res Function(_$GameSettingsImpl) then) =
      __$$GameSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GameplaySettings gameplay,
      GamepadSettings gamepad,
      VideoSettings video,
      AudioSettings audio});

  @override
  $GameplaySettingsCopyWith<$Res> get gameplay;
  @override
  $GamepadSettingsCopyWith<$Res> get gamepad;
  @override
  $VideoSettingsCopyWith<$Res> get video;
  @override
  $AudioSettingsCopyWith<$Res> get audio;
}

/// @nodoc
class __$$GameSettingsImplCopyWithImpl<$Res>
    extends _$GameSettingsCopyWithImpl<$Res, _$GameSettingsImpl>
    implements _$$GameSettingsImplCopyWith<$Res> {
  __$$GameSettingsImplCopyWithImpl(
      _$GameSettingsImpl _value, $Res Function(_$GameSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameplay = null,
    Object? gamepad = null,
    Object? video = null,
    Object? audio = null,
  }) {
    return _then(_$GameSettingsImpl(
      gameplay: null == gameplay
          ? _value.gameplay
          : gameplay // ignore: cast_nullable_to_non_nullable
              as GameplaySettings,
      gamepad: null == gamepad
          ? _value.gamepad
          : gamepad // ignore: cast_nullable_to_non_nullable
              as GamepadSettings,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as VideoSettings,
      audio: null == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as AudioSettings,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameSettingsImpl implements _GameSettings {
  const _$GameSettingsImpl(
      {this.gameplay = const GameplaySettings(),
      this.gamepad = const GamepadSettings(),
      this.video = const VideoSettings(),
      this.audio = const AudioSettings()});

  factory _$GameSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameSettingsImplFromJson(json);

  @override
  @JsonKey()
  final GameplaySettings gameplay;
  @override
  @JsonKey()
  final GamepadSettings gamepad;
  @override
  @JsonKey()
  final VideoSettings video;
  @override
  @JsonKey()
  final AudioSettings audio;

  @override
  String toString() {
    return 'GameSettings(gameplay: $gameplay, gamepad: $gamepad, video: $video, audio: $audio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameSettingsImpl &&
            (identical(other.gameplay, gameplay) ||
                other.gameplay == gameplay) &&
            (identical(other.gamepad, gamepad) || other.gamepad == gamepad) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.audio, audio) || other.audio == audio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameplay, gamepad, video, audio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameSettingsImplCopyWith<_$GameSettingsImpl> get copyWith =>
      __$$GameSettingsImplCopyWithImpl<_$GameSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameSettingsImplToJson(
      this,
    );
  }
}

abstract class _GameSettings implements GameSettings {
  const factory _GameSettings(
      {final GameplaySettings gameplay,
      final GamepadSettings gamepad,
      final VideoSettings video,
      final AudioSettings audio}) = _$GameSettingsImpl;

  factory _GameSettings.fromJson(Map<String, dynamic> json) =
      _$GameSettingsImpl.fromJson;

  @override
  GameplaySettings get gameplay;
  @override
  GamepadSettings get gamepad;
  @override
  VideoSettings get video;
  @override
  AudioSettings get audio;
  @override
  @JsonKey(ignore: true)
  _$$GameSettingsImplCopyWith<_$GameSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GameplaySettings _$GameplaySettingsFromJson(Map<String, dynamic> json) {
  return _GameplaySettings.fromJson(json);
}

/// @nodoc
mixin _$GameplaySettings {
  double get gameSpeed => throw _privateConstructorUsedError;
  double get birdJumpHeight => throw _privateConstructorUsedError;
  double get birdGravity => throw _privateConstructorUsedError;
  double get distanceBetweenPipeGroups => throw _privateConstructorUsedError;
  double get minPipeHeight => throw _privateConstructorUsedError;
  double get gapBetweenPipes => throw _privateConstructorUsedError;
  double get maxRandomGapRange => throw _privateConstructorUsedError;
  bool get hideTopPipes => throw _privateConstructorUsedError;
  bool get autoOpenPipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameplaySettingsCopyWith<GameplaySettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameplaySettingsCopyWith<$Res> {
  factory $GameplaySettingsCopyWith(
          GameplaySettings value, $Res Function(GameplaySettings) then) =
      _$GameplaySettingsCopyWithImpl<$Res, GameplaySettings>;
  @useResult
  $Res call(
      {double gameSpeed,
      double birdJumpHeight,
      double birdGravity,
      double distanceBetweenPipeGroups,
      double minPipeHeight,
      double gapBetweenPipes,
      double maxRandomGapRange,
      bool hideTopPipes,
      bool autoOpenPipes});
}

/// @nodoc
class _$GameplaySettingsCopyWithImpl<$Res, $Val extends GameplaySettings>
    implements $GameplaySettingsCopyWith<$Res> {
  _$GameplaySettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSpeed = null,
    Object? birdJumpHeight = null,
    Object? birdGravity = null,
    Object? distanceBetweenPipeGroups = null,
    Object? minPipeHeight = null,
    Object? gapBetweenPipes = null,
    Object? maxRandomGapRange = null,
    Object? hideTopPipes = null,
    Object? autoOpenPipes = null,
  }) {
    return _then(_value.copyWith(
      gameSpeed: null == gameSpeed
          ? _value.gameSpeed
          : gameSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      birdJumpHeight: null == birdJumpHeight
          ? _value.birdJumpHeight
          : birdJumpHeight // ignore: cast_nullable_to_non_nullable
              as double,
      birdGravity: null == birdGravity
          ? _value.birdGravity
          : birdGravity // ignore: cast_nullable_to_non_nullable
              as double,
      distanceBetweenPipeGroups: null == distanceBetweenPipeGroups
          ? _value.distanceBetweenPipeGroups
          : distanceBetweenPipeGroups // ignore: cast_nullable_to_non_nullable
              as double,
      minPipeHeight: null == minPipeHeight
          ? _value.minPipeHeight
          : minPipeHeight // ignore: cast_nullable_to_non_nullable
              as double,
      gapBetweenPipes: null == gapBetweenPipes
          ? _value.gapBetweenPipes
          : gapBetweenPipes // ignore: cast_nullable_to_non_nullable
              as double,
      maxRandomGapRange: null == maxRandomGapRange
          ? _value.maxRandomGapRange
          : maxRandomGapRange // ignore: cast_nullable_to_non_nullable
              as double,
      hideTopPipes: null == hideTopPipes
          ? _value.hideTopPipes
          : hideTopPipes // ignore: cast_nullable_to_non_nullable
              as bool,
      autoOpenPipes: null == autoOpenPipes
          ? _value.autoOpenPipes
          : autoOpenPipes // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameplaySettingsImplCopyWith<$Res>
    implements $GameplaySettingsCopyWith<$Res> {
  factory _$$GameplaySettingsImplCopyWith(_$GameplaySettingsImpl value,
          $Res Function(_$GameplaySettingsImpl) then) =
      __$$GameplaySettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double gameSpeed,
      double birdJumpHeight,
      double birdGravity,
      double distanceBetweenPipeGroups,
      double minPipeHeight,
      double gapBetweenPipes,
      double maxRandomGapRange,
      bool hideTopPipes,
      bool autoOpenPipes});
}

/// @nodoc
class __$$GameplaySettingsImplCopyWithImpl<$Res>
    extends _$GameplaySettingsCopyWithImpl<$Res, _$GameplaySettingsImpl>
    implements _$$GameplaySettingsImplCopyWith<$Res> {
  __$$GameplaySettingsImplCopyWithImpl(_$GameplaySettingsImpl _value,
      $Res Function(_$GameplaySettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameSpeed = null,
    Object? birdJumpHeight = null,
    Object? birdGravity = null,
    Object? distanceBetweenPipeGroups = null,
    Object? minPipeHeight = null,
    Object? gapBetweenPipes = null,
    Object? maxRandomGapRange = null,
    Object? hideTopPipes = null,
    Object? autoOpenPipes = null,
  }) {
    return _then(_$GameplaySettingsImpl(
      gameSpeed: null == gameSpeed
          ? _value.gameSpeed
          : gameSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      birdJumpHeight: null == birdJumpHeight
          ? _value.birdJumpHeight
          : birdJumpHeight // ignore: cast_nullable_to_non_nullable
              as double,
      birdGravity: null == birdGravity
          ? _value.birdGravity
          : birdGravity // ignore: cast_nullable_to_non_nullable
              as double,
      distanceBetweenPipeGroups: null == distanceBetweenPipeGroups
          ? _value.distanceBetweenPipeGroups
          : distanceBetweenPipeGroups // ignore: cast_nullable_to_non_nullable
              as double,
      minPipeHeight: null == minPipeHeight
          ? _value.minPipeHeight
          : minPipeHeight // ignore: cast_nullable_to_non_nullable
              as double,
      gapBetweenPipes: null == gapBetweenPipes
          ? _value.gapBetweenPipes
          : gapBetweenPipes // ignore: cast_nullable_to_non_nullable
              as double,
      maxRandomGapRange: null == maxRandomGapRange
          ? _value.maxRandomGapRange
          : maxRandomGapRange // ignore: cast_nullable_to_non_nullable
              as double,
      hideTopPipes: null == hideTopPipes
          ? _value.hideTopPipes
          : hideTopPipes // ignore: cast_nullable_to_non_nullable
              as bool,
      autoOpenPipes: null == autoOpenPipes
          ? _value.autoOpenPipes
          : autoOpenPipes // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameplaySettingsImpl extends _GameplaySettings {
  const _$GameplaySettingsImpl(
      {this.gameSpeed = 120,
      this.birdJumpHeight = 140,
      this.birdGravity = 310,
      this.distanceBetweenPipeGroups = 240,
      this.minPipeHeight = 120,
      this.gapBetweenPipes = 90,
      this.maxRandomGapRange = 300,
      this.hideTopPipes = false,
      this.autoOpenPipes = false})
      : super._();

  factory _$GameplaySettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameplaySettingsImplFromJson(json);

  @override
  @JsonKey()
  final double gameSpeed;
  @override
  @JsonKey()
  final double birdJumpHeight;
  @override
  @JsonKey()
  final double birdGravity;
  @override
  @JsonKey()
  final double distanceBetweenPipeGroups;
  @override
  @JsonKey()
  final double minPipeHeight;
  @override
  @JsonKey()
  final double gapBetweenPipes;
  @override
  @JsonKey()
  final double maxRandomGapRange;
  @override
  @JsonKey()
  final bool hideTopPipes;
  @override
  @JsonKey()
  final bool autoOpenPipes;

  @override
  String toString() {
    return 'GameplaySettings(gameSpeed: $gameSpeed, birdJumpHeight: $birdJumpHeight, birdGravity: $birdGravity, distanceBetweenPipeGroups: $distanceBetweenPipeGroups, minPipeHeight: $minPipeHeight, gapBetweenPipes: $gapBetweenPipes, maxRandomGapRange: $maxRandomGapRange, hideTopPipes: $hideTopPipes, autoOpenPipes: $autoOpenPipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameplaySettingsImpl &&
            (identical(other.gameSpeed, gameSpeed) ||
                other.gameSpeed == gameSpeed) &&
            (identical(other.birdJumpHeight, birdJumpHeight) ||
                other.birdJumpHeight == birdJumpHeight) &&
            (identical(other.birdGravity, birdGravity) ||
                other.birdGravity == birdGravity) &&
            (identical(other.distanceBetweenPipeGroups,
                    distanceBetweenPipeGroups) ||
                other.distanceBetweenPipeGroups == distanceBetweenPipeGroups) &&
            (identical(other.minPipeHeight, minPipeHeight) ||
                other.minPipeHeight == minPipeHeight) &&
            (identical(other.gapBetweenPipes, gapBetweenPipes) ||
                other.gapBetweenPipes == gapBetweenPipes) &&
            (identical(other.maxRandomGapRange, maxRandomGapRange) ||
                other.maxRandomGapRange == maxRandomGapRange) &&
            (identical(other.hideTopPipes, hideTopPipes) ||
                other.hideTopPipes == hideTopPipes) &&
            (identical(other.autoOpenPipes, autoOpenPipes) ||
                other.autoOpenPipes == autoOpenPipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      gameSpeed,
      birdJumpHeight,
      birdGravity,
      distanceBetweenPipeGroups,
      minPipeHeight,
      gapBetweenPipes,
      maxRandomGapRange,
      hideTopPipes,
      autoOpenPipes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameplaySettingsImplCopyWith<_$GameplaySettingsImpl> get copyWith =>
      __$$GameplaySettingsImplCopyWithImpl<_$GameplaySettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameplaySettingsImplToJson(
      this,
    );
  }
}

abstract class _GameplaySettings extends GameplaySettings {
  const factory _GameplaySettings(
      {final double gameSpeed,
      final double birdJumpHeight,
      final double birdGravity,
      final double distanceBetweenPipeGroups,
      final double minPipeHeight,
      final double gapBetweenPipes,
      final double maxRandomGapRange,
      final bool hideTopPipes,
      final bool autoOpenPipes}) = _$GameplaySettingsImpl;
  const _GameplaySettings._() : super._();

  factory _GameplaySettings.fromJson(Map<String, dynamic> json) =
      _$GameplaySettingsImpl.fromJson;

  @override
  double get gameSpeed;
  @override
  double get birdJumpHeight;
  @override
  double get birdGravity;
  @override
  double get distanceBetweenPipeGroups;
  @override
  double get minPipeHeight;
  @override
  double get gapBetweenPipes;
  @override
  double get maxRandomGapRange;
  @override
  bool get hideTopPipes;
  @override
  bool get autoOpenPipes;
  @override
  @JsonKey(ignore: true)
  _$$GameplaySettingsImplCopyWith<_$GameplaySettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GamepadSettings _$GamepadSettingsFromJson(Map<String, dynamic> json) {
  return _GamepadSettings.fromJson(json);
}

/// @nodoc
mixin _$GamepadSettings {
  String? get actionKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamepadSettingsCopyWith<GamepadSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamepadSettingsCopyWith<$Res> {
  factory $GamepadSettingsCopyWith(
          GamepadSettings value, $Res Function(GamepadSettings) then) =
      _$GamepadSettingsCopyWithImpl<$Res, GamepadSettings>;
  @useResult
  $Res call({String? actionKey});
}

/// @nodoc
class _$GamepadSettingsCopyWithImpl<$Res, $Val extends GamepadSettings>
    implements $GamepadSettingsCopyWith<$Res> {
  _$GamepadSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionKey = freezed,
  }) {
    return _then(_value.copyWith(
      actionKey: freezed == actionKey
          ? _value.actionKey
          : actionKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamepadSettingsImplCopyWith<$Res>
    implements $GamepadSettingsCopyWith<$Res> {
  factory _$$GamepadSettingsImplCopyWith(_$GamepadSettingsImpl value,
          $Res Function(_$GamepadSettingsImpl) then) =
      __$$GamepadSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? actionKey});
}

/// @nodoc
class __$$GamepadSettingsImplCopyWithImpl<$Res>
    extends _$GamepadSettingsCopyWithImpl<$Res, _$GamepadSettingsImpl>
    implements _$$GamepadSettingsImplCopyWith<$Res> {
  __$$GamepadSettingsImplCopyWithImpl(
      _$GamepadSettingsImpl _value, $Res Function(_$GamepadSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionKey = freezed,
  }) {
    return _then(_$GamepadSettingsImpl(
      actionKey: freezed == actionKey
          ? _value.actionKey
          : actionKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GamepadSettingsImpl implements _GamepadSettings {
  const _$GamepadSettingsImpl({this.actionKey});

  factory _$GamepadSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamepadSettingsImplFromJson(json);

  @override
  final String? actionKey;

  @override
  String toString() {
    return 'GamepadSettings(actionKey: $actionKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamepadSettingsImpl &&
            (identical(other.actionKey, actionKey) ||
                other.actionKey == actionKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, actionKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamepadSettingsImplCopyWith<_$GamepadSettingsImpl> get copyWith =>
      __$$GamepadSettingsImplCopyWithImpl<_$GamepadSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamepadSettingsImplToJson(
      this,
    );
  }
}

abstract class _GamepadSettings implements GamepadSettings {
  const factory _GamepadSettings({final String? actionKey}) =
      _$GamepadSettingsImpl;

  factory _GamepadSettings.fromJson(Map<String, dynamic> json) =
      _$GamepadSettingsImpl.fromJson;

  @override
  String? get actionKey;
  @override
  @JsonKey(ignore: true)
  _$$GamepadSettingsImplCopyWith<_$GamepadSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoSettings _$VideoSettingsFromJson(Map<String, dynamic> json) {
  return _VideoSettings.fromJson(json);
}

/// @nodoc
mixin _$VideoSettings {
  bool get visualizeAudioCues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoSettingsCopyWith<VideoSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoSettingsCopyWith<$Res> {
  factory $VideoSettingsCopyWith(
          VideoSettings value, $Res Function(VideoSettings) then) =
      _$VideoSettingsCopyWithImpl<$Res, VideoSettings>;
  @useResult
  $Res call({bool visualizeAudioCues});
}

/// @nodoc
class _$VideoSettingsCopyWithImpl<$Res, $Val extends VideoSettings>
    implements $VideoSettingsCopyWith<$Res> {
  _$VideoSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visualizeAudioCues = null,
  }) {
    return _then(_value.copyWith(
      visualizeAudioCues: null == visualizeAudioCues
          ? _value.visualizeAudioCues
          : visualizeAudioCues // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoSettingsImplCopyWith<$Res>
    implements $VideoSettingsCopyWith<$Res> {
  factory _$$VideoSettingsImplCopyWith(
          _$VideoSettingsImpl value, $Res Function(_$VideoSettingsImpl) then) =
      __$$VideoSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool visualizeAudioCues});
}

/// @nodoc
class __$$VideoSettingsImplCopyWithImpl<$Res>
    extends _$VideoSettingsCopyWithImpl<$Res, _$VideoSettingsImpl>
    implements _$$VideoSettingsImplCopyWith<$Res> {
  __$$VideoSettingsImplCopyWithImpl(
      _$VideoSettingsImpl _value, $Res Function(_$VideoSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visualizeAudioCues = null,
  }) {
    return _then(_$VideoSettingsImpl(
      visualizeAudioCues: null == visualizeAudioCues
          ? _value.visualizeAudioCues
          : visualizeAudioCues // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoSettingsImpl implements _VideoSettings {
  const _$VideoSettingsImpl({this.visualizeAudioCues = false});

  factory _$VideoSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoSettingsImplFromJson(json);

  @override
  @JsonKey()
  final bool visualizeAudioCues;

  @override
  String toString() {
    return 'VideoSettings(visualizeAudioCues: $visualizeAudioCues)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoSettingsImpl &&
            (identical(other.visualizeAudioCues, visualizeAudioCues) ||
                other.visualizeAudioCues == visualizeAudioCues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, visualizeAudioCues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoSettingsImplCopyWith<_$VideoSettingsImpl> get copyWith =>
      __$$VideoSettingsImplCopyWithImpl<_$VideoSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoSettingsImplToJson(
      this,
    );
  }
}

abstract class _VideoSettings implements VideoSettings {
  const factory _VideoSettings({final bool visualizeAudioCues}) =
      _$VideoSettingsImpl;

  factory _VideoSettings.fromJson(Map<String, dynamic> json) =
      _$VideoSettingsImpl.fromJson;

  @override
  bool get visualizeAudioCues;
  @override
  @JsonKey(ignore: true)
  _$$VideoSettingsImplCopyWith<_$VideoSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AudioSettings _$AudioSettingsFromJson(Map<String, dynamic> json) {
  return _AudioSettings.fromJson(json);
}

/// @nodoc
mixin _$AudioSettings {
  bool get audioGuidance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AudioSettingsCopyWith<AudioSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioSettingsCopyWith<$Res> {
  factory $AudioSettingsCopyWith(
          AudioSettings value, $Res Function(AudioSettings) then) =
      _$AudioSettingsCopyWithImpl<$Res, AudioSettings>;
  @useResult
  $Res call({bool audioGuidance});
}

/// @nodoc
class _$AudioSettingsCopyWithImpl<$Res, $Val extends AudioSettings>
    implements $AudioSettingsCopyWith<$Res> {
  _$AudioSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioGuidance = null,
  }) {
    return _then(_value.copyWith(
      audioGuidance: null == audioGuidance
          ? _value.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioSettingsImplCopyWith<$Res>
    implements $AudioSettingsCopyWith<$Res> {
  factory _$$AudioSettingsImplCopyWith(
          _$AudioSettingsImpl value, $Res Function(_$AudioSettingsImpl) then) =
      __$$AudioSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool audioGuidance});
}

/// @nodoc
class __$$AudioSettingsImplCopyWithImpl<$Res>
    extends _$AudioSettingsCopyWithImpl<$Res, _$AudioSettingsImpl>
    implements _$$AudioSettingsImplCopyWith<$Res> {
  __$$AudioSettingsImplCopyWithImpl(
      _$AudioSettingsImpl _value, $Res Function(_$AudioSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioGuidance = null,
  }) {
    return _then(_$AudioSettingsImpl(
      audioGuidance: null == audioGuidance
          ? _value.audioGuidance
          : audioGuidance // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioSettingsImpl implements _AudioSettings {
  const _$AudioSettingsImpl({this.audioGuidance = false});

  factory _$AudioSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioSettingsImplFromJson(json);

  @override
  @JsonKey()
  final bool audioGuidance;

  @override
  String toString() {
    return 'AudioSettings(audioGuidance: $audioGuidance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioSettingsImpl &&
            (identical(other.audioGuidance, audioGuidance) ||
                other.audioGuidance == audioGuidance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, audioGuidance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioSettingsImplCopyWith<_$AudioSettingsImpl> get copyWith =>
      __$$AudioSettingsImplCopyWithImpl<_$AudioSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioSettingsImplToJson(
      this,
    );
  }
}

abstract class _AudioSettings implements AudioSettings {
  const factory _AudioSettings({final bool audioGuidance}) =
      _$AudioSettingsImpl;

  factory _AudioSettings.fromJson(Map<String, dynamic> json) =
      _$AudioSettingsImpl.fromJson;

  @override
  bool get audioGuidance;
  @override
  @JsonKey(ignore: true)
  _$$AudioSettingsImplCopyWith<_$AudioSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
