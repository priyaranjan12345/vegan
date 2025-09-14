import 'package:equatable/equatable.dart';

class VideoEntity extends Equatable {
  const VideoEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.thumbnail,
    this.browseId = '',
    this.playlistId = '',
  });

  final String id;
  final String title;
  final String description;
  final String videoUrl;
  final String thumbnail;
  final String browseId;
  final String playlistId;

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    videoUrl,
    thumbnail,
    browseId,
    playlistId,
  ];
}
