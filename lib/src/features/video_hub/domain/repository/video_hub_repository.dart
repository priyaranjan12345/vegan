import 'package:dartz/dartz.dart';

import '../../data/model/yt_model/yt_browse_model.dart';
import '../../data/model/yt_model/yt_moods_model.dart';

abstract interface class VideoHubRepository {
  Future<Either<Exception, YtMoodsModel>> fetchMoods();
  Future<Either<Exception, YtBrowseModel>> fetchVideos();
}
