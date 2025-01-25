import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_settings.freezed.dart';
part 'game_settings.g.dart';

@freezed
sealed class GameSettings with _$GameSettings {
  const factory GameSettings({
    @Default(GameplaySettings()) GameplaySettings gameplay,
    @Default(GamepadSettings()) GamepadSettings gamepad,
    @Default(VideoSettings()) VideoSettings video,
    @Default(AudioSettings()) AudioSettings audio,
  }) = _GameSettings;

  factory GameSettings.fromJson(Map<String, dynamic> json) => _$GameSettingsFromJson(json);
}

@freezed
sealed class GameplaySettings with _$GameplaySettings {
  const factory GameplaySettings({
    @Default(120) double gameSpeed,
    @Default(140) double birdJumpHeight,
    @Default(310) double birdGravity,
    @Default(240) double distanceBetweenPipeGroups,
    @Default(120) double minPipeHeight,
    @Default(90) double gapBetweenPipes,
    @Default(300) double maxRandomGapRange,
    @Default(false) bool hideTopPipes,
    @Default(false) bool autoOpenPipes,
  }) = _GameplaySettings;

  const GameplaySettings._();

  factory GameplaySettings.easy() => const GameplaySettings(
        gameSpeed: 100,
        birdJumpHeight: 160,
        birdGravity: 310,
        distanceBetweenPipeGroups: 300,
        minPipeHeight: 120,
        gapBetweenPipes: 110,
        maxRandomGapRange: 200,
        hideTopPipes: false,
        autoOpenPipes: false,
      );

  factory GameplaySettings.medium() => const GameplaySettings(
        gameSpeed: 120,
        birdJumpHeight: 120,
        birdGravity: 310,
        distanceBetweenPipeGroups: 240,
        minPipeHeight: 120,
        gapBetweenPipes: 90,
        maxRandomGapRange: 300,
        hideTopPipes: false,
        autoOpenPipes: false,
      );

  factory GameplaySettings.hard() => const GameplaySettings(
        gameSpeed: 150,
        birdJumpHeight: 140,
        birdGravity: 310,
        distanceBetweenPipeGroups: 220,
        minPipeHeight: 80,
        gapBetweenPipes: 90,
        maxRandomGapRange: 400,
        hideTopPipes: false,
        autoOpenPipes: false,
      );

  bool get isCustom => ![
        GameplaySettings.easy(),
        GameplaySettings.medium(),
        GameplaySettings.hard(),
      ].contains(this);

  factory GameplaySettings.fromJson(Map<String, dynamic> json) => _$GameplaySettingsFromJson(json);
}

@freezed
sealed class GamepadSettings with _$GamepadSettings {
  const factory GamepadSettings({
    String? actionKey,
  }) = _GamepadSettings;

  factory GamepadSettings.fromJson(Map<String, dynamic> json) => _$GamepadSettingsFromJson(json);
}

@freezed
sealed class VideoSettings with _$VideoSettings {
  const factory VideoSettings({
    @Default(false) bool visualizeAudioCues,
  }) = _VideoSettings;

  factory VideoSettings.fromJson(Map<String, dynamic> json) => _$VideoSettingsFromJson(json);
}

@freezed
sealed class AudioSettings with _$AudioSettings {
  const factory AudioSettings({
    @Default(false) bool audioGuidance,
  }) = _AudioSettings;

  factory AudioSettings.fromJson(Map<String, dynamic> json) => _$AudioSettingsFromJson(json);
}
