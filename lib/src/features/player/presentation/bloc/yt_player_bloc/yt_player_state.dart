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
    required this.videoId,
    required this.title,
    required this.description,
    required this.author,
    required this.thumbnail,
    required this.playlistId,
    required this.playlistIndex
  });

  final String videoId;
  final String title;
  final String description;
  final String author;
  final String thumbnail;
  final String playlistId;
  final int playlistIndex;
}

class PlayerErrorState extends YtPlayerState {
  const PlayerErrorState();
}
