import 'package:dartz/dartz.dart';
import 'package:vegan/src/core/error/exception/custom_exception.dart';
import 'package:vegan/src/features/video_hub/data/model/yt_model/yt_next_up_model.dart';

import '../../domain/repository/video_hub_repository.dart';
import '../datasource/datasource.dart';
import '../model/yt_model/yt_browse_model.dart';
import '../model/yt_model/yt_moods_model.dart';
import '../model/yt_model/yt_playlist_model.dart';

class IVideoHubRepository implements VideoHubRepository {
  const IVideoHubRepository({required this.videoHubRemoteDatasource});

  final VideoHubRemoteDatasource videoHubRemoteDatasource;

  @override
  Future<Either<Exception, YtBrowseModel>> fetchVideos({
    String? browseId,
  }) async {
    final response = await videoHubRemoteDatasource.getVideosResponse(
      browseId: browseId,
    );

    if (response.statusCode == 200) {
      try {
        final body = response.data;
        final ytModel = YtBrowseModel.fromJson(body);
        return Right(ytModel);
      } catch (e) {
        return Left(ServerException());
      }
    }

    return Left(ServerException());
  }

  @override
  Future<Either<Exception, YtMoodsModel>> fetchMoods() async {
    final response = await videoHubRemoteDatasource.getMoodsResponse();
    if (response.statusCode == 200) {
      try {
        final body = response.data;
        final ytMoodsModel = YtMoodsModel.fromJson(body);
        return Right(ytMoodsModel);
      } catch (e) {
        return Left(ServerException());
      }
    }

    return Left(ServerException());
  }

  @override
  Future<Either<Exception, YtPlaylistModel>> fetchPlaylist({
    String? browseId,
  }) async {
    final response = await videoHubRemoteDatasource.getVideosResponse(
      browseId: browseId,
    );

    if (response.statusCode == 200) {
      try {
        final body = response.data;
        final ytModel = YtPlaylistModel.fromJson(body);
        return Right(ytModel);
      } catch (e) {
        return Left(ServerException());
      }
    }

    return Left(ServerException());
  }

  @override
  Future<Either<Exception, YtNextUpModel>> fetchNextUp({
    required String videoId,
    required String playlistId,
  }) async {
    final response = await videoHubRemoteDatasource.getNextUpResponse(
      videoId: videoId,
      playlistId: playlistId,
    );

    if (response.statusCode == 200) {
      try {
        final body = response.data;
        final ytNextUpModel = YtNextUpModel.fromJson(body);
        return Right(ytNextUpModel);
      } catch (e) {
        return Left(ServerException());
      }
    }

    return Left(ServerException());
  }

  @override
  Future<Either<Exception, YtBrowseModel>> fetchMoodMusic({
    required String params,
  }) async {
    final response = await videoHubRemoteDatasource.getMoodMusicResponse(
      params: params,
    );

    if (response.statusCode == 200) {
      try {
        final body = response.data;
        final ytBrowseModel = YtBrowseModel.fromJson(body);
        return Right(ytBrowseModel);
      } catch (e) {
        return Left(ServerException());
      }
    }

    return Left(ServerException());
  }
}
