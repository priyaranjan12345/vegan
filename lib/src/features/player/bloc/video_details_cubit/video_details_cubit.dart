import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

part 'video_details_state.dart';

class VideoDetailsCubit extends Cubit<VideoDetailsState> {
  VideoDetailsCubit({
    required YoutubeExplode youtubeExplode,
  })  : _youtubeExplode = youtubeExplode,
        super(initialState);

  static const initialState = VideoDetailsState(
    artist: '',
    author: '',
    thumbnail: '',
    title: '',
    videoDetails: VideoDetails.init,
  );

  final YoutubeExplode _youtubeExplode;

  Future<void> getVideoDetails(String videoId) async {
    emit(state.copyWith(videoDetails: VideoDetails.loading));
    try {
      final ytUrl = 'https://youtube.com/watch?v=$videoId';
      var video = await _youtubeExplode.videos.get(ytUrl);
      emit(
        state.copyWith(
          artist: video.author,
          author: video.author,
          thumbnail: video.thumbnails.mediumResUrl,
          title: video.title,
          videoDetails: VideoDetails.loaded,
        ),
      );
    } catch (e) {
      emit(state.copyWith(videoDetails: VideoDetails.error));
    }
  }
}
