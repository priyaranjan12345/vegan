import 'package:dartz/dartz.dart';
import 'package:vegan/src/features/video_hub/data/model/yt_model/yt_moods_model.dart';

import '../../data/model/yt_model/yt_model.dart';

abstract interface class VideoHubRepository {
  Future<Either<Exception, YtMoodsModel>> fetchMoods();
  Future<Either<Exception, YtModel>> fetchVideos();
}
