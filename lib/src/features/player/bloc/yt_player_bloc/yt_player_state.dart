part of 'yt_player_bloc.dart';

sealed class YtPlayerState {
  const YtPlayerState();
}

class PlayerInitState extends YtPlayerState {
  const PlayerInitState();
}

class PlayerLoadingState extends YtPlayerState {
  const PlayerLoadingState();
}

class PlayerLoadedState extends YtPlayerState {
  const PlayerLoadedState({
    required this.player,
  });

  final Player player;
}

class PlayerErrorState extends YtPlayerState {
  const PlayerErrorState();
}
