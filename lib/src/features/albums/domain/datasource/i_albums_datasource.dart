import 'package:dio/dio.dart';

abstract interface class IAlbumsDatasource {
  Future<Response> getAlbumsResponse({String? browseId});
}
