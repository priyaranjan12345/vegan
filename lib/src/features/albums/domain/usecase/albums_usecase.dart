import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:vegan/src/features/albums/domain/repository/i_albums_repository.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/albums_entity.dart';

class AlbumsUsecase implements UseCase<AlbumsEntity, AlbumsParams> {
  const AlbumsUsecase({
    required this.iAlbumsRepository,
  });

  final IAlbumsRepository iAlbumsRepository;

  @override
  Future<Either<Failure, AlbumsEntity>> call(AlbumsParams params) async {
    final result = await iAlbumsRepository.fetchAlbums(
      browseId: params.browseId,
    );

    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytAlbumsModel) {
        final musicItems = <MusicItemEntity>[];

        // album header content
        // final header =
        //     (ytAlbumsModel.contents?.twoColumnBrowseResultsRenderer?.tabs ?? [])
        //         .firstOrNull;

        // albums contents
        final contents =
            ytAlbumsModel
                .contents
                ?.twoColumnBrowseResultsRenderer
                ?.secondaryContents
                ?.sectionListRenderer
                ?.contents ??
            [];

        for (var content in contents) {
          final musicShelfRenderer = content.musicShelfRenderer;
          final musicCarouselShelfRenderer = content.musicCarouselShelfRenderer;

          // musics
          if (musicShelfRenderer != null) {
            final innerContents = musicShelfRenderer.contents;

            for (final innerContent in innerContents) {
              final musicRenderer =
                  innerContent.musicResponsiveListItemRenderer;
              final flexColumns = musicRenderer?.flexColumns ?? [];
              final videoId = musicRenderer?.playlistItemData?.videoId ?? '';
              // final thumbnail =
              //     (musicRenderer
              //                 ?.thumbnail
              //                 ?.musicThumbnailRenderer
              //                 ?.thumbnail
              //                 ?.thumbnails ??
              //             [])
              //         .lastOrNull
              //         ?.url ??
              //     '';
              // final watchEndpoint = musicRenderer
              //     ?.overlay
              //     ?.musicItemThumbnailOverlayRenderer
              //     ?.content
              //     ?.musicPlayButtonRenderer
              //     ?.playNavigationEndpoint
              //     ?.watchEndpoint;
              // final playlistId = watchEndpoint?.playlistId ?? '';
              // final params;

              final title =
                  (flexColumns
                              .firstOrNull
                              ?.musicResponsiveListItemFlexColumnRenderer
                              ?.text
                              ?.runs ??
                          [])
                      .firstOrNull
                      ?.text ??
                  '';
              final subtitle =
                  (flexColumns
                              .elementAtOrNull(1)
                              ?.musicResponsiveListItemFlexColumnRenderer
                              ?.text
                              ?.runs ??
                          [])
                      .map((e) => e.text)
                      .join(' ');

              print("adding...");

              musicItems.add(
                MusicItemEntity(
                  videoId: videoId,
                  thumbnail: '',
                  title: title,
                  subtitle: subtitle,
                ),
              );
            }
          }

          // album carousel
          if (musicCarouselShelfRenderer != null) {}
        }

        return Right(
          AlbumsEntity(
            header: const AlbumsHeaderEntity(
              title: '',
              subtitle: '',
              thumbnail: '',
            ),
            carousel: const [],
            musicItems: musicItems,
          ),
        );
      },
    );
  }
}

class AlbumsParams extends Equatable {
  final String? browseId;

  const AlbumsParams({
    this.browseId,
  });

  @override
  List<Object?> get props => [
    browseId,
  ];
}
