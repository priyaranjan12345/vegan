// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'video_details_cubit.dart';

class VideoDetailsState extends Equatable {
  const VideoDetailsState({
    required this.videoDetailsStatus,
    this.videoId = '',
    required this.title,
    required this.artist,
    required this.author,
    required this.thumbnail,
  });

  final VideoDetailsStatus videoDetailsStatus;
  final String videoId;
  final String title;
  final String artist;
  final String author;
  final String thumbnail;

  VideoDetailsState copyWith({
    VideoDetailsStatus? videoDetailsStatus,
    String? videoId,
    String? title,
    String? artist,
    String? author,
    String? thumbnail,
  }) {
    return VideoDetailsState(
      videoDetailsStatus: videoDetailsStatus ?? this.videoDetailsStatus,
      videoId: videoId ?? this.videoId,
      title: title ?? this.title,
      artist: artist ?? this.artist,
      author: author ?? this.author,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  @override
  List<Object> get props => [
        videoDetailsStatus,
        videoId,
        title,
        artist,
        author,
        thumbnail,
      ];
}

enum VideoDetailsStatus { init, loading, loaded, error }
