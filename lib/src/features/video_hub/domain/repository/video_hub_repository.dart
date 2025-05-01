import 'package:dartz/dartz.dart';

import '../../data/model/yt_model/yt_model.dart';

abstract interface class VideoHubRepository {
  Future<Either<Exception, YtModel>> fetchVideos();
}
