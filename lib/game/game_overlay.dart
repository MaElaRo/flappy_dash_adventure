enum GameOverlay {
  mainMenu('MainMenu'),
  gameOver('GameOver'),
  settings('Settings'),
  gameplaySettings('GameplaySettings'),
  controlsSettings('ControlsSettings'),
  videoSettings('VideoSettings'),
  audioSettings('AudioSettings');

  const GameOverlay(this.name);

  final String name;
}
