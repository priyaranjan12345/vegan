part of 'video_hub_bloc.dart';

sealed class VideoHubState extends Equatable {
  const VideoHubState();
  
  @override
  List<Object> get props => [];
}

final class VideoHubInitial extends VideoHubState {}
