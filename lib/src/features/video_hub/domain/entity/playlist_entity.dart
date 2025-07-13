import 'package:equatable/equatable.dart';

class PlaylistEntity extends Equatable {
  final String id;
  final String browseId;
  final String params;
  final String title;
  final String description;
  final String thumbnail;
  final String channelId;
  final String channelName;
  final String channelThumbnail;
  final int? videoCount;

  const PlaylistEntity({
    required this.id,
    required this.browseId,
    required this.title,
    required this.description,
    required this.thumbnail,
    this.params = '',
    this.channelId = '',
    this.channelName = '',
    this.channelThumbnail = '',
    this.videoCount,
  });

  @override
  List<Object?> get props => [
    id,
    browseId,
    params,
    title,
    description,
    thumbnail,
    channelId,
    channelName,
    channelThumbnail,
    videoCount,
  ];
}
