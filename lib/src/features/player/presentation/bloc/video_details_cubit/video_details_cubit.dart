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
    videoDetailsStatus: VideoDetailsStatus.init,
  );

  final YoutubeExplode _youtubeExplode;

  Future<void> getVideoDetails(String videoId) async {
    emit(
      state.copyWith(
        videoDetailsStatus: VideoDetailsStatus.loading,
      ),
    );
    try {
      final ytUrl = 'https://youtube.com/watch?v=$videoId';
      var video = await _youtubeExplode.videos.get(ytUrl);

      emit(
        state.copyWith(
          videoId: videoId,
          artist: video.description,
          author: video.author,
          thumbnail: video.thumbnails.mediumResUrl,
          title: video.title,
          videoDetailsStatus: VideoDetailsStatus.loaded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          videoDetailsStatus: VideoDetailsStatus.error,
        ),
      );
    }
  }
}
