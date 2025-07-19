import 'package:dio/dio.dart';

import '../../../../core/base/app_url.dart';
import '../../../../core/base/yt_api_body.dart';
import '../../domain/datasource/i_albums_datasource.dart';

class AlbumsDatasource implements IAlbumsDatasource {
  AlbumsDatasource({required this.dio});

  final Dio dio;

  @override
  Future<Response> getAlbumsResponse({String? browseId}) async {
    return await dio.post(
      AppUrl.browse,
      data: YtApiBody.playlistContent(browseId),
    );
  }
}
