import 'dart:convert';

import 'package:flappy_dash_adventures/models/game_settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GameSettingsRepository {
  static const String _gameSettingsKey = 'gameSettings';

  Future<bool> updateGameSettings(GameSettings gameSettings) async {
    final sharedPreference = await SharedPreferences.getInstance();

    return sharedPreference.setString(
      _gameSettingsKey,
      jsonEncode(gameSettings.toJson()),
    );
  }

  Future<GameSettings> getGameSettings() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final jsonString = prefs.getString(_gameSettingsKey);

    return jsonString != null ? GameSettings.fromJson(jsonDecode(jsonString)) : const GameSettings();
  }
}
