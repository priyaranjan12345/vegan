import 'package:equatable/equatable.dart';

class AlbumsEntity extends Equatable {
  const AlbumsEntity({
    required this.header,
    required this.musicItems,
    required this.carousel,
  });

  final AlbumsHeaderEntity header;
  final List<MusicItemEntity> musicItems;
  final List<
    ({
      String title,
      String subtitle,
      List<MusicCarouselEntity> musicCarouseItems,
    })
  >
  carousel;

  @override
  List<Object?> get props => [
    header,
    musicItems,
  ];
}

class AlbumsHeaderEntity extends Equatable {
  const AlbumsHeaderEntity({
    required this.title,
    required this.subtitle,
    required this.thumbnail,
  });

  final String title;
  final String subtitle;
  final String thumbnail;

  @override
  List<Object?> get props => [
    title,
    subtitle,
    thumbnail,
  ];
}

class MusicItemEntity extends Equatable {
  /// entity contents props i.e (videoId, playlistId)
  /// <br>
  /// and combine  (browseId, params) if required for next page
  const MusicItemEntity({
    required this.videoId,
    required this.thumbnail,
    required this.title,
    required this.subtitle,
    this.browseId,
    this.browseParams,
    this.playlistId,
    this.playlistParams,
  });

  final String videoId;
  final String thumbnail;
  final String title;
  final String subtitle;
  final String? browseId;
  final String? browseParams;
  final String? playlistId;
  final String? playlistParams;

  @override
  List<Object?> get props => [
    videoId,
    thumbnail,
    title,
    subtitle,
    browseId,
    browseParams,
    playlistId,
    playlistParams,
  ];
}

class MusicCarouselEntity extends Equatable {
  const MusicCarouselEntity({
    required this.thumbnail,
    required this.title,
    required this.subtitle,
    required this.browseId,
    required this.params,
  });

  final String thumbnail;
  final String title;
  final String subtitle;
  final String browseId;
  final String params;

  @override
  List<Object?> get props => [
    thumbnail,
    title,
    subtitle,
    browseId,
    params,
  ];
}
