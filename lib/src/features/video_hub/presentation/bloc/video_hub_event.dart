part of 'video_hub_bloc.dart';

sealed class VideoHubEvent extends Equatable {
  const VideoHubEvent();

  @override
  List<Object> get props => [];
}
final class GetVideoHubEvent extends VideoHubEvent {
  const GetVideoHubEvent();

  @override
  List<Object> get props => [];
}
