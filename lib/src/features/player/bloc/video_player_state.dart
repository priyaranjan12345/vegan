// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'video_player_bloc.dart';

class VideoPlayerState extends Equatable {
  const VideoPlayerState({
    required this.videoPlayerController,
    this.status = VideoControllerStatus.initial,
  });

  final VideoControllerStatus status;
  final VideoPlayerController videoPlayerController;

  @override
  List<Object> get props => [
        videoPlayerController,
        status,
      ];

  VideoPlayerState copyWith({
    VideoControllerStatus? status,
   VideoPlayerController? videoPlayerController,
  }) {
    return VideoPlayerState(
      status: status ?? this.status,
      videoPlayerController: videoPlayerController ?? this.videoPlayerController,
    );
  }
}

enum VideoControllerStatus {
  initial,
  initializing,
  initialized,
  error,
}
