import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/entity.dart';
import '../entity/playlist_entity.dart';
import '../repository/video_hub_repository.dart';

class ContinuationUsecase implements UseCase<HomeEntity, ContinuationParams> {
  ContinuationUsecase({
    required this.videoHubRepository,
  });

  final VideoHubRepository videoHubRepository;

  @override
  Future<Either<Failure, HomeEntity>> call(params) async {
    final result = await videoHubRepository.fetchContinuation(
      continuationId: params.continuationId,
    );

    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytContinuationModel) {
        final videos = <VideoEntity>[];
        final playlists = <PlaylistEntity>[];
        final videoSuggestions = <VideoSuggestionEntity>[];
        final playlistSuggestions = <PlaylistSuggestionEntity>[];

        /// continuation ID
        final continuationId =
            (ytContinuationModel
                        .continuationContents
                        ?.sectionListContinuation
                        ?.continuations ??
                    [])
                .firstOrNull
                ?.nextContinuationData
                ?.continuation;

        /// outer contents
        final contents =
            ytContinuationModel
                .continuationContents
                ?.sectionListContinuation
                ?.contents ??
            [];

        for (final outerContent in contents) {
          final musicCarouselShelfRenderer =
              outerContent.musicCarouselShelfRenderer;

          /// extract carousel heading
          final carouselTitle =
              (musicCarouselShelfRenderer
                          ?.header
                          ?.musicCarouselShelfBasicHeaderRenderer
                          ?.title
                          ?.runs ??
                      [])
                  .firstOrNull
                  ?.text ??
              '';

          /// extract inner contents
          final innerContents = musicCarouselShelfRenderer?.contents ?? [];
          for (final innerContent in innerContents) {
            final musicResponsiveListItemRenderer =
                innerContent.musicResponsiveListItemRenderer;
            final musicTwoRowItemRenderer =
                innerContent.musicTwoRowItemRenderer;

            /// music carousel items
            if (musicResponsiveListItemRenderer != null) {
              final thumbnail =
                  (musicResponsiveListItemRenderer
                              .thumbnail
                              ?.musicThumbnailRenderer
                              ?.thumbnail
                              ?.thumbnails ??
                          [])
                      .firstOrNull
                      ?.url ??
                  '';
              final flexColumnRenderer = musicResponsiveListItemRenderer
                  .flexColumns
                  .firstOrNull
                  ?.musicResponsiveListItemFlexColumnRenderer;
              final flexColumnRun =
                  (flexColumnRenderer?.text?.runs ?? []).firstOrNull;

              final title = flexColumnRun?.text ?? '';
              final subTitle =
                  (musicResponsiveListItemRenderer.flexColumns
                              .elementAtOrNull(1)
                              ?.musicResponsiveListItemFlexColumnRenderer
                              ?.text
                              ?.runs ??
                          [])
                      .map((e) => e.text)
                      .join(' ');
              final id =
                  flexColumnRun?.navigationEndpoint?.watchEndpoint?.videoId ??
                  '';
              final playlistId =
                  flexColumnRun
                      ?.navigationEndpoint
                      ?.watchEndpoint
                      ?.playlistId ??
                  '';

              /// create video entity model instance and keep inside video list
              final videoEntity = VideoEntity(
                id: id,
                title: title,
                description: subTitle,
                videoUrl: '',
                thumbnail: thumbnail,
                browseId: '',
                playlistId: playlistId,
              );

              videos.add(videoEntity);
            }

            /// playlist carousel items
            if (musicTwoRowItemRenderer != null) {
              final thumbnail =
                  (musicTwoRowItemRenderer
                              .thumbnailRenderer
                              ?.musicThumbnailRenderer
                              ?.thumbnail
                              ?.thumbnails ??
                          [])
                      .firstOrNull
                      ?.url ??
                  '';
              final title =
                  (musicTwoRowItemRenderer.title?.runs ?? [])
                      .firstOrNull
                      ?.text ??
                  '';
              final subTitle =
                  (musicTwoRowItemRenderer.subtitle?.runs ?? [])
                      .firstOrNull
                      ?.text ??
                  '';
              final browseId =
                  musicTwoRowItemRenderer
                      .navigationEndpoint
                      ?.browseEndpoint
                      ?.browseId ??
                  '';

              final params =
                  musicTwoRowItemRenderer
                      .navigationEndpoint
                      ?.browseEndpoint
                      ?.params ??
                  '';

              /// create Playlist model instance and keep it
              /// inside playlist list
              final playlistEntity = PlaylistEntity(
                id: '',
                browseId: browseId,
                title: title,
                description: subTitle,
                thumbnail: thumbnail,
                params: params,
              );

              playlists.add(playlistEntity);
            }
          }

          /// keep heading and carousel items
          if (videos.isNotEmpty) {
            videoSuggestions.add(
              VideoSuggestionEntity(
                heading: carouselTitle,
                videos: [...videos],
              ),
            );
          }

          if (playlists.isNotEmpty) {
            playlistSuggestions.add(
              PlaylistSuggestionEntity(
                heading: carouselTitle,
                playlists: [...playlists],
              ),
            );
          }

          videos.clear();
          playlists.clear();
        }

        return Right(
          HomeEntity(
            moods: const [],
            videoSuggestions: videoSuggestions,
            playlistSuggestions: playlistSuggestions,
            continuationId: continuationId ?? '',
          ),
        );
      },
    );
  }
}

class ContinuationParams extends Equatable {
  final String continuationId;

  const ContinuationParams({
    required this.continuationId,
  });

  @override
  List<Object?> get props => [
    continuationId,
  ];
}
