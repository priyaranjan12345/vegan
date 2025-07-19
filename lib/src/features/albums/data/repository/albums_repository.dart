import 'package:dartz/dartz.dart';

import '../../../../core/error/exception/custom_exception.dart';
import '../../domain/datasource/i_albums_datasource.dart';
import '../../domain/repository/i_albums_repository.dart';
import '../model/yt_albums_model.dart';

class AlbumsRepository implements IAlbumsRepository {
  const AlbumsRepository({
    required this.iAlbumsDatasource,
  });

  final IAlbumsDatasource iAlbumsDatasource;

  @override
  Future<Either<Exception, YtAlbumsModel>> fetchAlbums({
    String? browseId,
  }) async {
    final response = await iAlbumsDatasource.getAlbumsResponse(
      browseId: browseId,
    );

    if (response.statusCode == 200) {
      try {
        final body = response.data;
        final ytModel = YtAlbumsModel.fromJson(body);
        return Right(ytModel);
      } catch (e) {
        return Left(ServerException());
      }
    }

    return Left(ServerException());
  }
}
