import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/function_mapper/function_mapper.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/model/video_model.dart';
import '../entity/entity.dart';
import '../entity/playlist_entity.dart';
import '../repository/video_hub_repository.dart';

class VideoHubUsecase implements UseCase<HomeEntity, Params> {
  VideoHubUsecase({
    required this.videoHubRepository,
  });

  final VideoHubRepository videoHubRepository;

  @override
  Future<Either<Failure, HomeEntity>> call(params) async {
    final result = switch (params.browse) {
      Browse.initial => await videoHubRepository.fetchVideos(
        browseId: params.browseId,
      ),
      Browse.moods => await videoHubRepository.fetchMoodMusic(
        params: params.params ?? '',
      ),
    };

    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytBrowseModel) {
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

        final sectionListRenderer =
            tabs.first.tabRenderer?.content?.sectionListRenderer;

        final continuation = (sectionListRenderer?.continuations ?? [])
            .firstOrNull
            ?.nextContinuationData
            ?.continuation;

        /// add moods
        final moodChips = sectionListRenderer?.header?.chipCloudRenderer?.chips;
        moods.addAll(
          moodChips?.map(
                (e) => MoodEntity(
                  label: e.chipCloudChipRenderer?.text?.runs.first.text ?? '',
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

        /// outer contents
        final contents = sectionListRenderer?.contents ?? [];
        for (var content in contents) {
          final musicCarouselShelfRenderer = content.musicCarouselShelfRenderer;

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

              /// create Playlist model instance and keep it
              /// inside playlist list
              final playlistEntity = PlaylistEntity(
                id: '',
                browseId: browseId,
                title: title,
                description: subTitle,
                thumbnail: thumbnail,
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
            moods: moods,
            videoSuggestions: videoSuggestions,
            playlistSuggestions: playlistSuggestions,
            continuationId: continuation ?? '',
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
      thumbnail: t.thumbnailUrl,
      browseId: t.uploadTime,
    );
  }
}

class Params extends Equatable {
  const Params({
    this.browseId,
    this.params,
    this.continuationId,
    this.browse = Browse.initial,
  });

  final Browse browse;
  final String? browseId;
  final String? params;
  final String? continuationId;

  @override
  List<Object?> get props => [browseId];
}

enum Browse {
  initial,
  moods,
}
