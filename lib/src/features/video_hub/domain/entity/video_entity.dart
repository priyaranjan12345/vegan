import 'package:equatable/equatable.dart';

class VideoEntity extends Equatable {
  const VideoEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.thubmnail,
    required this.publishDate,
    this.playlistId = '',
  });

  final String id;
  final String title;
  final String description;
  final String videoUrl;
  final String thubmnail;
  final String publishDate;
  final String playlistId;

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        videoUrl,
        thubmnail,
        publishDate,
        playlistId,
      ];
}
