import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/usecase/usecase.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';

import '../../../video_hub/domain/repository/video_hub_repository.dart';

class NextUpUsecase implements UseCase<List<VideoEntity>, NextUpParams> {
  NextUpUsecase({
    required this.videoHubRepository,
  });

  final VideoHubRepository videoHubRepository;

  @override
  Future<Either<Failure, List<VideoEntity>>> call(params) async {
    final result = await videoHubRepository.fetchNextUp(
      videoId: params.videoId,
      playlistId: params.playlistId,
    );
    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytNextUpModel) {
        final videos = <VideoEntity>[];

        final tabs =
            ytNextUpModel
                .contents
                ?.singleColumnMusicWatchNextResultsRenderer
                ?.tabbedRenderer
                ?.watchNextTabbedResultsRenderer
                ?.tabs ??
            [];

        final innerContents =
            tabs
                .first
                .tabRenderer
                ?.content
                ?.musicQueueRenderer
                ?.content
                ?.playlistPanelRenderer
                ?.contents ??
            [];

        for (final content in innerContents) {
          final item = content.playlistPanelVideoRenderer;

          final videoId =
              item?.navigationEndpoint?.watchEndpoint?.videoId ?? '';

          final playlistId =
              item?.navigationEndpoint?.watchEndpoint?.playlistId ?? '';

          final thubmnail = item?.thumbnail?.thumbnails.first.url ?? '';

          final title = item?.title?.runs.first.text ?? '';
          final desc = item?.longBylineText?.runs.first.text ?? '';

          final videoEntity = VideoEntity(
            id: videoId,
            title: title,
            description: desc,
            videoUrl: '',
            thumbnail: thubmnail,
            browseId: '',
            playlistId: playlistId,
          );

          videos.add(videoEntity);
        }

        return Right(videos);
      },
    );
  }
}

class NextUpParams extends Equatable {
  final String videoId;
  final String playlistId;

  const NextUpParams({
    required this.videoId,
    required this.playlistId,
  });

  @override
  List<Object?> get props => [
    videoId,
    playlistId,
  ];
}
