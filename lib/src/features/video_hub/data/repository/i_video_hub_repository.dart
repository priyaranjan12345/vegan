import 'package:dartz/dartz.dart';
import 'package:vegan/src/core/error/exception/custom_exception.dart';
import 'package:vegan/src/features/video_hub/data/model/video_model.dart';

import '../../domain/repository/video_hub_repository.dart';
import '../datasource/datasource.dart';

class IVideoHubRepository implements VideoHubRepository {
  const IVideoHubRepository({required this.videoHubRemoteDatasource});

  final VideoHubRemoteDatasource videoHubRemoteDatasource;

  @override
  Future<Either<Exception, List<VideoModel>>> fetchVideos() async {
    final response = await videoHubRemoteDatasource.getVideosResponse();
    if (response.statusCode == 200) {
      final body = response.body as List;
      final videoModels = body.map((e) => VideoModel.fromMap(e)).toList();
      return Right(videoModels);
    }

    return Left(ServerException());
  }
}
