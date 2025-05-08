import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/usecase/usecase.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';

import '../repository/video_hub_repository.dart';

class PlaylistUsecase implements UseCase<List<VideoEntity>, PlaylistParams> {
  PlaylistUsecase({
    required this.videoHubRepository,
  });

  final VideoHubRepository videoHubRepository;

  @override
  Future<Either<Failure, List<VideoEntity>>> call(params) async {
    final result = await videoHubRepository.fetchPlaylist(
      browseId: params.browseId,
    );
    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytPlaylistModel) {
        final videos = <VideoEntity>[];

        final contents = ytPlaylistModel
                .contents
                ?.twoColumnBrowseResultsRenderer
                ?.secondaryContents
                ?.sectionListRenderer
                ?.contents ??
            [];

        final innerContents =
            contents.first.musicPlaylistShelfRenderer?.contents ?? [];

        for (final content in innerContents) {
          final item = content.musicResponsiveListItemRenderer;
          final videoId = item
                  ?.flexColumns
                  .first
                  .musicResponsiveListItemFlexColumnRenderer
                  ?.text
                  ?.runs
                  .first
                  .navigationEndpoint
                  ?.watchEndpoint
                  ?.videoId ??
              '';
          final thubmnail = item?.thumbnail?.musicThumbnailRenderer?.thumbnail
                  ?.thumbnails.first.url ??
              '';
          final title = item
                  ?.flexColumns
                  .first
                  .musicResponsiveListItemFlexColumnRenderer
                  ?.text
                  ?.runs
                  .first
                  .text ??
              '';

          final videoEntity = VideoEntity(
            id: videoId,
            title: title,
            description: '',
            videoUrl: '',
            thubmnail: thubmnail,
          );

          videos.add(videoEntity);
        }

        return Right(videos);
      },
    );
  }
}

class PlaylistParams extends Equatable {
  final String? browseId;

  const PlaylistParams({this.browseId});

  @override
  List<Object?> get props => [browseId];
}
