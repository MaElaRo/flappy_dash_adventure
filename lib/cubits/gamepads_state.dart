part of 'gamepads_cubit.dart';

@freezed
class GamepadsState with _$GamepadsState {
  const factory GamepadsState({
    @Default([]) List<GamepadController> gamepads,
    GamepadEvent? lastEvent,
  }) = _GamepadsState;
}
