// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameSettingsImpl _$$GameSettingsImplFromJson(Map<String, dynamic> json) =>
    _$GameSettingsImpl(
      gameplay: json['gameplay'] == null
          ? const GameplaySettings()
          : GameplaySettings.fromJson(json['gameplay'] as Map<String, dynamic>),
      gamepad: json['gamepad'] == null
          ? const GamepadSettings()
          : GamepadSettings.fromJson(json['gamepad'] as Map<String, dynamic>),
      video: json['video'] == null
          ? const VideoSettings()
          : VideoSettings.fromJson(json['video'] as Map<String, dynamic>),
      audio: json['audio'] == null
          ? const AudioSettings()
          : AudioSettings.fromJson(json['audio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GameSettingsImplToJson(_$GameSettingsImpl instance) =>
    <String, dynamic>{
      'gameplay': instance.gameplay,
      'gamepad': instance.gamepad,
      'video': instance.video,
      'audio': instance.audio,
    };

_$GameplaySettingsImpl _$$GameplaySettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$GameplaySettingsImpl(
      gameSpeed: (json['gameSpeed'] as num?)?.toDouble() ?? 120,
      birdJumpHeight: (json['birdJumpHeight'] as num?)?.toDouble() ?? 140,
      birdGravity: (json['birdGravity'] as num?)?.toDouble() ?? 310,
      distanceBetweenPipeGroups:
          (json['distanceBetweenPipeGroups'] as num?)?.toDouble() ?? 240,
      minPipeHeight: (json['minPipeHeight'] as num?)?.toDouble() ?? 120,
      gapBetweenPipes: (json['gapBetweenPipes'] as num?)?.toDouble() ?? 90,
      maxRandomGapRange: (json['maxRandomGapRange'] as num?)?.toDouble() ?? 300,
      hideTopPipes: json['hideTopPipes'] as bool? ?? false,
      autoOpenPipes: json['autoOpenPipes'] as bool? ?? false,
    );

Map<String, dynamic> _$$GameplaySettingsImplToJson(
        _$GameplaySettingsImpl instance) =>
    <String, dynamic>{
      'gameSpeed': instance.gameSpeed,
      'birdJumpHeight': instance.birdJumpHeight,
      'birdGravity': instance.birdGravity,
      'distanceBetweenPipeGroups': instance.distanceBetweenPipeGroups,
      'minPipeHeight': instance.minPipeHeight,
      'gapBetweenPipes': instance.gapBetweenPipes,
      'maxRandomGapRange': instance.maxRandomGapRange,
      'hideTopPipes': instance.hideTopPipes,
      'autoOpenPipes': instance.autoOpenPipes,
    };

_$GamepadSettingsImpl _$$GamepadSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$GamepadSettingsImpl(
      actionKey: json['actionKey'] as String?,
    );

Map<String, dynamic> _$$GamepadSettingsImplToJson(
        _$GamepadSettingsImpl instance) =>
    <String, dynamic>{
      'actionKey': instance.actionKey,
    };

_$VideoSettingsImpl _$$VideoSettingsImplFromJson(Map<String, dynamic> json) =>
    _$VideoSettingsImpl(
      visualizeAudioCues: json['visualizeAudioCues'] as bool? ?? false,
    );

Map<String, dynamic> _$$VideoSettingsImplToJson(_$VideoSettingsImpl instance) =>
    <String, dynamic>{
      'visualizeAudioCues': instance.visualizeAudioCues,
    };

_$AudioSettingsImpl _$$AudioSettingsImplFromJson(Map<String, dynamic> json) =>
    _$AudioSettingsImpl(
      audioGuidance: json['audioGuidance'] as bool? ?? false,
    );

Map<String, dynamic> _$$AudioSettingsImplToJson(_$AudioSettingsImpl instance) =>
    <String, dynamic>{
      'audioGuidance': instance.audioGuidance,
    };
