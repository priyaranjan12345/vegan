import 'package:equatable/equatable.dart';

class ContinuationEntity extends Equatable {
  const ContinuationEntity({
    required this.heading,
    required this.carousels,
    required this.continuationId,
    required this.continuationParams,
    this.desc,
  });
  final String heading;
  final String? desc;

  /// 1st list is for iterate carouels <br>
  /// 2nd list is for carousel items
  final List<ContinuationCarouselEntity> carousels;
  final String continuationId;
  final String continuationParams;

  @override
  List<Object?> get props => [
    continuationId,
    continuationParams,
    heading,
    desc,
    carousels,
  ];
}

class ContinuationCarouselEntity extends Equatable {
  const ContinuationCarouselEntity({
    required this.title,
    required this.subTitle,
    required this.items,
  });

  final String title;
  final String subTitle;
  final List<ContinuationContentEntity> items;

  @override
  List<Object?> get props => [
    title,
    items,
  ];
}

class ContinuationContentEntity extends Equatable {
  const ContinuationContentEntity({
    required this.title,
    required this.thumbnailUrl,
    this.playlistId,
    this.playlistParams,
    this.browseId,
    this.browseParams,
  });

  final String title;
  final String thumbnailUrl;
  final String? browseId;
  final String? browseParams;
  final String? playlistId;
  final String? playlistParams;

  @override
  List<Object?> get props => [
    title,
    thumbnailUrl,
    browseId,
    browseParams,
    playlistId,
    playlistParams,
  ];
}
