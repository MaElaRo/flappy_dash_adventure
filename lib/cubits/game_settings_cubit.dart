import 'package:bloc/bloc.dart';
import 'package:flappy_dash_adventures/models/game_settings.dart';
import 'package:flappy_dash_adventures/repositories/game_settings_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_settings_state.dart';
part 'game_settings_cubit.freezed.dart';

class GameSettingsCubit extends Cubit<GameSettingsState> {
  GameSettingsCubit({
    required GameSettingsRepository gameSettingsRepository,
  })  : _gameSettingsRepository = gameSettingsRepository,
        super(
          const GameSettingsState.initial(),
        );

  final GameSettingsRepository _gameSettingsRepository;

  Future<void> init() async {
    try {
      final gameSettings = await _gameSettingsRepository.getGameSettings();

      emit(
        GameSettingsState.success(gameSettings: gameSettings),
      );
    } catch (e) {
      emit(
        const GameSettingsState.failure(),
      );
    }
  }

  Future<void> updateGameSettings(GameSettings gameSettings) async {
    try {
      await _gameSettingsRepository.updateGameSettings(gameSettings);

      emit(
        GameSettingsState.success(gameSettings: gameSettings),
      );
    } catch (e) {
      emit(
        const GameSettingsState.failure(),
      );
    }
  }
}
