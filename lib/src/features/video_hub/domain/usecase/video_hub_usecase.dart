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
    final result = await videoHubRepository.fetchVideos(
      browseId: params.browseId,
    );
    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytBrowseModel) {
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
            contents.removeLast();
            for (final content in contents) {
              final heading =
                  content
                      .musicCarouselShelfRenderer
                      ?.header
                      ?.musicCarouselShelfBasicHeaderRenderer
                      ?.title
                      ?.runs
                      .first
                      .text ??
                  '';

              final innerContents =
                  content.musicCarouselShelfRenderer?.contents ?? [];

              // videos
              for (final innerContent in innerContents) {
                final videoContent =
                    innerContent.musicResponsiveListItemRenderer;
                final playlistContent = innerContent.musicTwoRowItemRenderer;

                // musics
                if (videoContent != null) {
                  final musicRenderer = videoContent
                      .flexColumns
                      .first
                      .musicResponsiveListItemFlexColumnRenderer;
                  final thumbnail =
                      videoContent
                          .thumbnail
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
                          .flexColumns
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

                  videos.add(
                    VideoEntity(
                      id: id,
                      title: title,
                      description: subTitle,
                      videoUrl: '',
                      thubmnail: thumbnail,
                      browseId: '',
                      playlistId: playlistId,
                    ),
                  );
                }

                // add header and videos

                // playlist
                if (playlistContent != null) {
                  final thumbnails = playlistContent
                      .thumbnailRenderer
                      ?.musicThumbnailRenderer
                      ?.thumbnail
                      ?.thumbnails;
                  final thumbnail = thumbnails?.first.url ?? '';
                  final title = playlistContent.title?.runs.first.text ?? '';
                  final description =
                      playlistContent.subtitle?.runs.first.text ?? '';
                  final browseId =
                      playlistContent
                          .navigationEndpoint
                          ?.browseEndpoint
                          ?.browseId ??
                      '';
                  final plalistItems =
                      playlistContent.menu?.menuRenderer?.items ?? [];
                  final playlistIds = [
                    ...plalistItems.map(
                      (item) => item
                          .menuNavigationItemRenderer
                          ?.navigationEndpoint
                          ?.watchPlaylistEndpoint
                          ?.playlistId,
                    ),
                  ];

                  playlists.add(
                    PlaylistEntity(
                      id: playlistIds.first ?? '',
                      browseId: browseId,
                      title: title,
                      description: description,
                      thumbnail: thumbnail,
                    ),
                  );
                }
              }

              // add
              final moreContentButton = content
                  .musicCarouselShelfRenderer
                  ?.header
                  ?.musicCarouselShelfBasicHeaderRenderer
                  ?.moreContentButton;
              if (moreContentButton != null) {
                videoSuggestions.add(
                  VideoSuggestionEntity(
                    heading: heading,
                    videos: videos,
                  ),
                );
              } else {
                playlistSuggestions.add(
                  PlaylistSuggestionEntity(
                    heading: heading,
                    playlists: playlists,
                  ),
                );
              }
            }
          }
        }

        return Right(
          HomeEntity(
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
  final String? browseId;

  const Params({this.browseId});

  @override
  List<Object?> get props => [browseId];
}
