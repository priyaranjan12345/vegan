part of 'yt_player_bloc.dart';

sealed class YtPlayerEvent {
  const YtPlayerEvent();
}

class InitPlayer extends YtPlayerEvent {
  const InitPlayer();
}

class LoadMusic extends YtPlayerEvent {
  const LoadMusic(this.videoId);

  final String videoId;
}
