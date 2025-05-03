import 'package:equatable/equatable.dart';

import 'playlist_entity.dart';
import 'video_entity.dart';

class HomeEntity extends Equatable {
  const HomeEntity({
    required this.videoSuggestions,
    required this.playlistSuggestions,
  });

  final List<VideoSuggestionEntity> videoSuggestions;
  final List<PlaylistSuggestionEntity> playlistSuggestions;

  @override
  List<Object?> get props => [
        videoSuggestions,
        playlistSuggestions,
      ];
}

class VideoSuggestionEntity extends Equatable {
  const VideoSuggestionEntity({
    required this.heading,
    required this.videos,
  });

  final String heading;
  final List<VideoEntity> videos;

  @override
  List<Object?> get props => [
        heading,
        videos,
      ];
}

class PlaylistSuggestionEntity extends Equatable {
  const PlaylistSuggestionEntity({
    required this.heading,
    required this.playlists,
  });

  final String heading;
  final List<PlaylistEntity> playlists;

  @override
  List<Object?> get props => [
        heading,
        playlists,
      ];
}
