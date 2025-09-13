part of 'yt_player_bloc.dart';

sealed class YtPlayerEvent {
  const YtPlayerEvent();
}

class InitPlayer extends YtPlayerEvent {
  const InitPlayer();
}

class LoadMusic extends YtPlayerEvent {
  const LoadMusic(
    this.videoId, {
    this.playlistId,
    this.playlist = const [],
  });

  final String videoId;
  final String? playlistId;
  final List<VideoEntity>? playlist;
}

class LoadPlaylist extends YtPlayerEvent {
  const LoadPlaylist();
}

class NextMusic extends YtPlayerEvent {
  const NextMusic();
}

class PrevMusic extends YtPlayerEvent {
  const PrevMusic();
}

class LoadPlaylistMusic extends YtPlayerEvent {
  const LoadPlaylistMusic();
}

class UpdateAudioPlayerStatus extends YtPlayerEvent {
  const UpdateAudioPlayerStatus({
    this.isPlaying,
    this.currentPosition,
    this.buffer,
  });

  final bool? isPlaying;
  final Duration? currentPosition;
  final Duration? buffer;
}

class PlayPauseEvent extends YtPlayerEvent {
  const PlayPauseEvent();
}

class SeekPositionEvent extends YtPlayerEvent {
  const SeekPositionEvent(this.position);

  final Duration position;
}
