// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'video_details_cubit.dart';

class VideoDetailsState extends Equatable {
  const VideoDetailsState({
    required this.videoDetails,
    required this.title,
    required this.artist,
    required this.author,
    required this.thumbnail,
  });

  final VideoDetails videoDetails;
  final String title;
  final String artist;
  final String author;
  final String thumbnail;

  VideoDetailsState copyWith({
    VideoDetails? videoDetails,
    String? title,
    String? artist,
    String? author,
    String? thumbnail,
  }) {
    return VideoDetailsState(
      videoDetails: videoDetails ?? this.videoDetails,
      title: title ?? this.title,
      artist: artist ?? this.artist,
      author: author ?? this.author,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }

  @override
  List<Object> get props => [
        videoDetails,
        title,
        artist,
        author,
        thumbnail,
      ];
}

enum VideoDetails { init, loading, loaded, error }
