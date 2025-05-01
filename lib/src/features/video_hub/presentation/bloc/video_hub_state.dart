part of 'video_hub_bloc.dart';

sealed class VideoHubState extends Equatable {
  const VideoHubState();
}

final class VideoHubInitial extends VideoHubState {
  const VideoHubInitial() : super();

  @override
  List<Object> get props => [];
}

final class VideoHubLoading extends VideoHubState {
  const VideoHubLoading() : super();

  @override
  List<Object> get props => [];
}

final class VideoHubLoaded extends VideoHubState {
  const VideoHubLoaded({
    required this.homeEntity,
  }) : super();

  final HomeEntity homeEntity;

  @override
  List<Object> get props => [];
}

final class VideoHubError extends VideoHubState {
  const VideoHubError() : super();

  @override
  List<Object> get props => [];
}
