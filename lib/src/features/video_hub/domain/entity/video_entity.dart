import 'package:equatable/equatable.dart';

class VideoEntity extends Equatable {
  final String publishDate;

  const VideoEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.thubmnail,
    required this.publishDate,
  });

  final String id;
  final String title;
  final String description;
  final String videoUrl;
  final String thubmnail;

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        videoUrl,
        thubmnail,
        publishDate,
      ];
}
