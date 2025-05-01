part of 'video_player_bloc.dart';

sealed class VideoPlayerEvent extends Equatable {
  const VideoPlayerEvent();
}

final class InitializeVideoPlayerEvent extends VideoPlayerEvent {
  const InitializeVideoPlayerEvent();

  @override
  List<Object> get props => [];
}
