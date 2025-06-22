part of 'video_hub_bloc.dart';

sealed class VideoHubEvent extends Equatable {
  const VideoHubEvent();
}

final class GetVideoHubEvent extends VideoHubEvent {
  const GetVideoHubEvent();

  @override
  List<Object> get props => [];
}

class LoadMoodMusic extends VideoHubEvent {
  const LoadMoodMusic({
    required this.params,
  });

  final String params;
  @override
  List<Object> get props => [params];
}

class LoadContinuation extends VideoHubEvent {
  const LoadContinuation({
    required this.continuationId,
  });

  final String continuationId;

  @override
  List<Object> get props => [continuationId];
}
