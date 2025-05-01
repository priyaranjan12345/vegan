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
    required this.title,
    required this.artist,
    required this.thumbnail,
  });

  final Player player;
  final String title;
  final String artist;
  final String thumbnail;
}

class PlayerErrorState extends YtPlayerState {
  const PlayerErrorState();
}
