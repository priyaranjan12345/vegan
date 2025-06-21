import 'package:dio/dio.dart';
import 'package:vegan/src/core/base/app_url.dart';

import '../../../../core/base/yt_api_body.dart';

abstract class VideoHubRemoteDatasource {
  Future<Response> getMoodsResponse();
  Future<Response> getVideosResponse({String? browseId});
  Future<Response> getNextUpResponse({
    required String videoId,
    required String playlistId,
  });
  Future<Response> getMoodMusicResponse({required String params});
  Future<Response> getContinuationResponse({required String continuationId});
}

class IVideoHubRemoteDatasource implements VideoHubRemoteDatasource {
  final Dio dio;

  IVideoHubRemoteDatasource({
    required this.dio,
  });

  @override
  Future<Response> getMoodsResponse() async {
    return await dio.post(
      AppUrl.browse,
      data: YtApiBody.moods,
    );
  }

  @override
  Future<Response> getVideosResponse({String? browseId}) async {
    return await dio.post(
      AppUrl.browse,
      data: YtApiBody.playlistContent(browseId),
    );
  }

  @override
  Future<Response> getNextUpResponse({
    required String videoId,
    required String playlistId,
  }) async {
    return await dio.post(
      AppUrl.next,
      data: YtApiBody.nextUp(
        videoId: videoId,
        playlistId: playlistId,
      ),
    );
  }

  @override
  Future<Response> getMoodMusicResponse({
    required String params,
  }) async {
    return await dio.post(
      AppUrl.browse,
      data: YtApiBody.moodsContent(params),
    );
  }

  @override
  Future<Response> getContinuationResponse({
    required String continuationId,
  }) async {
    return await dio.post(
      AppUrl.browse,
      data: YtApiBody.continuationContent(
        continuationId: continuationId,
      ),
    );
  }
}
