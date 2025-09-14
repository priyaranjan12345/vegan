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
      params: params.params ?? '',
    );
    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytPlaylistModel) {
        final videos = <VideoEntity>[];

        final contents =
            ytPlaylistModel
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
          final videoId =
              item
                  ?.overlay
                  ?.musicItemThumbnailOverlayRenderer
                  ?.content
                  ?.musicPlayButtonRenderer
                  ?.playNavigationEndpoint
                  ?.watchEndpoint
                  ?.videoId ??
              '';
          final thubmnail =
              item
                  ?.thumbnail
                  ?.musicThumbnailRenderer
                  ?.thumbnail
                  ?.thumbnails
                  .first
                  .url ??
              '';
          final title =
              item
                  ?.flexColumns
                  .first
                  .musicResponsiveListItemFlexColumnRenderer
                  ?.text
                  ?.runs
                  .first
                  .text ??
              '';
          final desc =
              item
                  ?.flexColumns[1]
                  .musicResponsiveListItemFlexColumnRenderer
                  ?.text
                  ?.runs
                  .first
                  .text ??
              '';
          final videoEntity = VideoEntity(
            id: videoId,
            title: title,
            description: desc,
            videoUrl: '',
            thumbnail: thubmnail,
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
  final String? params;

  const PlaylistParams({
    this.browseId,
    this.params,
  });

  @override
  List<Object?> get props => [
    browseId,
    params,
  ];
}
