import 'package:dartz/dartz.dart';

import '../../data/model/yt_albums_model.dart';

abstract interface class IAlbumsRepository {
  Future<Either<Exception, YtAlbumsModel>> fetchAlbums({
    String? browseId,
  });
}