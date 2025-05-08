part of 'playlist_cubit.dart';

sealed class PlaylistState extends Equatable {
  const PlaylistState();
}

final class PlaylistLoadingState extends PlaylistState {
  const PlaylistLoadingState();

  @override
  List<Object> get props => [];
}

final class PlaylistLoadedState extends PlaylistState {
  const PlaylistLoadedState({required this.videoEntities});

  final List<VideoEntity> videoEntities;

  @override
  List<Object> get props => [videoEntities];
}

final class PlaylistErrorState extends PlaylistState {
  const PlaylistErrorState({required this.message});

  final String message;

  @override
  List<Object> get props => [message];
}
