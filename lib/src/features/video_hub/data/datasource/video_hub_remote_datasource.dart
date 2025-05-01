import 'package:dio/dio.dart';
import 'package:vegan/src/core/base/app_url.dart';

import '../../../../core/base/api_header.dart';

abstract class VideoHubRemoteDatasource {
  Future<Response> getVideosResponse();
}

class IVideoHubRemoteDatasource implements VideoHubRemoteDatasource {
  final Dio dio;

  IVideoHubRemoteDatasource({
    required this.dio,
  });

  @override
  Future<Response> getVideosResponse() async {
    return await dio.post(
      AppUrl.browse,
      data: YtApiBody.home,
    );
  }
}
