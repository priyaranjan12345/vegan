import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/usecase/usecase.dart';
import 'package:vegan/src/features/video_hub/data/model/video_model.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';

import '../../../../core/function_mapper/function_mapper.dart';
import '../entity/playlist_entity.dart';
import '../repository/video_hub_repository.dart';

class VideoHubUsecase implements UseCase<HomeEntity, Params> {
  VideoHubUsecase({
    required this.videoHubRepository,
  });

  final VideoHubRepository videoHubRepository;

  @override
  Future<Either<Failure, HomeEntity>> call(params) async {
    final result = params.params == null
        ? await videoHubRepository.fetchVideos(
            browseId: params.browseId,
          )
        : await videoHubRepository.fetchMoodMusic(
            params: params.params!,
          );

    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytBrowseModel) {
        // list.elementAtOrNull(index);
        /**
         * MOODS
         * tabs.first.tabRenderer?.content?.sectionListRenderer?.header?.chipCloudRenderer; 
         */

        /**
         * OUTER CONTENTS:
         * index-0: music suggestions
         * index-1: playlist suggestions
         * index-2: artist suggestions
         */

        /**
         * CONTINUATIONS:
         * tabs.first.tabRenderer?.content?.sectionListRenderer?.continuations.first.continuation;
         */

        final moods = <MoodEntity>[];
        final videos = <VideoEntity>[];
        final playlists = <PlaylistEntity>[];
        final videoSuggestions = <VideoSuggestionEntity>[];
        final playlistSuggestions = <PlaylistSuggestionEntity>[];

        final tabs =
            ytBrowseModel.contents?.singleColumnBrowseResultsRenderer?.tabs ??
            [];

        if (tabs.isNotEmpty) {
          final contents =
              tabs.first.tabRenderer?.content?.sectionListRenderer?.contents ??
              [];

          if (contents.isNotEmpty) {
            final moodChips = tabs
                .first
                .tabRenderer
                ?.content
                ?.sectionListRenderer
                ?.header
                ?.chipCloudRenderer
                ?.chips;

            final videoSuggestionCarousel = contents
                .elementAtOrNull(0)
                ?.musicCarouselShelfRenderer;
            final playlistSuggestionCarousel = contents
                .elementAtOrNull(1)
                ?.musicCarouselShelfRenderer;
            // final artistSuggestion = contents
            //     .elementAtOrNull(2)
            //     ?.musicTastebuilderShelfRenderer;
            // final continuation = tabs
            //     .first
            //     .tabRenderer
            //     ?.content
            //     ?.sectionListRenderer
            //     ?.continuations
            //     .first
            //     .nextContinuationData
            //     ?.continuation;

            /// add moods
            moods.addAll(
              moodChips?.map(
                    (e) => MoodEntity(
                      label:
                          e.chipCloudChipRenderer?.text?.runs.first.text ?? '',
                      browseId:
                          e
                              .chipCloudChipRenderer
                              ?.navigationEndpoint
                              ?.browseEndpoint
                              ?.browseId ??
                          '',
                      params:
                          e
                              .chipCloudChipRenderer
                              ?.navigationEndpoint
                              ?.browseEndpoint
                              ?.params ??
                          '',
                    ),
                  ) ??
                  [],
            );

            /// add suggestions header and musics
            final heading =
                videoSuggestionCarousel
                    ?.header
                    ?.musicCarouselShelfBasicHeaderRenderer
                    ?.title
                    ?.runs
                    .first
                    .text ??
                '';
            videos.addAll(
              videoSuggestionCarousel?.contents.map(
                    (e) {
                      final videoContent = e.musicResponsiveListItemRenderer;
                      final musicRenderer = videoContent
                          ?.flexColumns
                          .first
                          .musicResponsiveListItemFlexColumnRenderer;
                      final thumbnail =
                          videoContent
                              ?.thumbnail
                              ?.musicThumbnailRenderer
                              ?.thumbnail
                              ?.thumbnails
                              .first
                              .url ??
                          '';
                      final flexColumnRuns = musicRenderer?.text?.runs.first;
                      final title = flexColumnRuns?.text ?? '';
                      final subTitle =
                          videoContent
                              ?.flexColumns
                              .last
                              .musicResponsiveListItemFlexColumnRenderer
                              ?.text
                              ?.runs
                              .first
                              .text ??
                          '';
                      final id =
                          flexColumnRuns
                              ?.navigationEndpoint
                              ?.watchEndpoint
                              ?.videoId ??
                          '';
                      final playlistId =
                          flexColumnRuns
                              ?.navigationEndpoint
                              ?.watchEndpoint
                              ?.playlistId ??
                          '';

                      return VideoEntity(
                        id: id,
                        title: title,
                        description: subTitle,
                        videoUrl: '',
                        thubmnail: thumbnail,
                        browseId: '',
                        playlistId: playlistId,
                      );
                    },
                  ) ??
                  [],
            );

            /// playlist suggestions
            final playlistHeading =
                playlistSuggestionCarousel
                    ?.header
                    ?.musicCarouselShelfBasicHeaderRenderer
                    ?.title
                    ?.runs
                    .first
                    .text ??
                '';
            playlists.addAll(
              playlistSuggestionCarousel?.contents.map((e) {
                    final playlistContent = e.musicTwoRowItemRenderer;
                    final thumbnails = playlistContent
                        ?.thumbnailRenderer
                        ?.musicThumbnailRenderer
                        ?.thumbnail
                        ?.thumbnails;
                    final thumbnail = thumbnails?.first.url ?? '';
                    final title = playlistContent?.title?.runs.first.text ?? '';
                    final description =
                        playlistContent?.subtitle?.runs.first.text ?? '';
                    final browseId =
                        playlistContent
                            ?.navigationEndpoint
                            ?.browseEndpoint
                            ?.browseId ??
                        '';
                    final plalistItems =
                        playlistContent?.menu?.menuRenderer?.items ?? [];
                    final playlistIds = [
                      ...plalistItems.map(
                        (item) => item
                            .menuNavigationItemRenderer
                            ?.navigationEndpoint
                            ?.watchPlaylistEndpoint
                            ?.playlistId,
                      ),
                    ];

                    return PlaylistEntity(
                      id: playlistIds.first ?? '',
                      browseId: browseId,
                      title: title,
                      description: description,
                      thumbnail: thumbnail,
                    );
                  }) ??
                  [],
            );

            videoSuggestions.add(
              VideoSuggestionEntity(
                heading: heading,
                videos: videos,
              ),
            );
            playlistSuggestions.add(
              PlaylistSuggestionEntity(
                heading: playlistHeading,
                playlists: playlists,
              ),
            );
          }
        }

        return Right(
          HomeEntity(
            moods: moods,
            videoSuggestions: videoSuggestions,
            playlistSuggestions: playlistSuggestions,
          ),
        );
      },
    );
  }
}

class VideoEntityMapper implements UniFunctionMapper<VideoEntity, VideoModel> {
  const VideoEntityMapper();

  @override
  VideoEntity call(VideoModel t) {
    return VideoEntity(
      id: t.id,
      title: t.title,
      description: t.description,
      videoUrl: t.videoUrl,
      thubmnail: t.thumbnailUrl,
      browseId: t.uploadTime,
    );
  }
}

class Params extends Equatable {
  const Params({
    this.browseId,
    this.params,
  });

  final String? browseId;
  final String? params;

  @override
  List<Object?> get props => [browseId];
}
