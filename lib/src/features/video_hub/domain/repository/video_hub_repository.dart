import 'package:dartz/dartz.dart';

import '../../data/model/video_model.dart';

abstract interface class VideoHubRepository {
  Future<Either<Exception, List<VideoModel>>> fetchVideos();
}