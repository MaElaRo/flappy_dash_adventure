part of 'game_settings_cubit.dart';

@freezed
class GameSettingsState with _$GameSettingsState {
  const factory GameSettingsState.initial({@Default(GameSettings()) GameSettings gameSettings}) = _Initial;
  const factory GameSettingsState.inProgress({@Default(GameSettings()) GameSettings gameSettings}) = _InProgress;
  const factory GameSettingsState.success({required GameSettings gameSettings}) = _Success;
  const factory GameSettingsState.failure({@Default(GameSettings()) GameSettings gameSettings}) = _Failure;
}
