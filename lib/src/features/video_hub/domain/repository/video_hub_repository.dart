import 'package:dartz/dartz.dart';
import 'package:vegan/src/features/video_hub/data/model/yt_model/yt_playlist_model.dart';

import '../../data/model/yt_model/yt_browse_model.dart';
import '../../data/model/yt_model/yt_moods_model.dart';
import '../../data/model/yt_model/yt_next_up_model.dart';

abstract interface class VideoHubRepository {
  Future<Either<Exception, YtMoodsModel>> fetchMoods();
  Future<Either<Exception, YtBrowseModel>> fetchVideos({String? browseId});
  Future<Either<Exception, YtPlaylistModel>> fetchPlaylist({String? browseId});
  Future<Either<Exception, YtNextUpModel>> fetchNextUp({
    required String videoId,
    required String playlistId,
  });
  Future<Either<Exception, YtBrowseModel>> fetchMoodMusic({required String params});
}
