import 'package:dartz/dartz.dart';

import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/usecase/usecase.dart';
import 'package:vegan/src/features/video_hub/data/model/video_model.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';

import '../../../../core/function_mapper/function_mapper.dart';
import '../../../../core/usecase/no_params.dart';
import '../entity/playlist_entity.dart';
import '../repository/video_hub_repository.dart';

class VideoHubUsecase implements UseCase<HomeEntity, NoParams> {
  VideoHubUsecase({
    required this.videoHubRepository,
  });

  final VideoHubRepository videoHubRepository;

  @override
  Future<Either<Failure, HomeEntity>> call(params) async {
    final result = await videoHubRepository.fetchVideos();
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
            for (final content in contents) {
              final heading = content
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
                  final musicRenderer = videoContent.flexColumns.first
                      .musicResponsiveListItemFlexColumnRenderer;
                  final thumbnail = videoContent
                          .thumbnail
                          ?.musicThumbnailRenderer
                          ?.thumbnail
                          ?.thumbnails
                          .first
                          .url ??
                      '';
                  final flexColumnRuns = musicRenderer?.text?.runs.first;
                  final title = flexColumnRuns?.text ?? '';
                  final id = flexColumnRuns
                          ?.navigationEndpoint?.watchEndpoint?.videoId ??
                      '';

                  videos.add(
                    VideoEntity(
                      id: id,
                      title: title,
                      description: '',
                      videoUrl: '',
                      thubmnail: thumbnail,
                      publishDate: '',
                    ),
                  );
                }

                // add header and videos

                // playlist
                if (playlistContent != null) {
                  final thumbnails = playlistContent.thumbnailRenderer
                      ?.musicThumbnailRenderer?.thumbnail?.thumbnails;
                  final thumbnail = thumbnails?.first.url ?? '';
                  final title = playlistContent.title?.runs.first.text ?? '';
                  final description =
                      playlistContent.subtitle?.runs.first.text ?? '';
                  final id = playlistContent
                          .navigationEndpoint?.browseEndpoint?.browseId ??
                      '';

                  playlists.add(
                    PlaylistEntity(
                      id: id,
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
                  VideoSuggestionEntity(heading: heading, videos: videos),
                );
              } else {
                playlistSuggestions.add(
                  PlaylistSuggestionEntity(
                      heading: heading, playlists: playlists),
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
      publishDate: t.uploadTime,
    );
  }
}
