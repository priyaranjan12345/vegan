import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:vegan/src/features/albums/domain/repository/i_albums_repository.dart';

import '../../../../core/error/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entity/albums_entity.dart';

class AlbumsUsecase implements UseCase<List<AlbumsEntity>, AlbumsParams> {
  const AlbumsUsecase({
    required this.iAlbumsRepository,
  });

  final IAlbumsRepository iAlbumsRepository;

  @override
  Future<Either<Failure, List<AlbumsEntity>>> call(AlbumsParams params) async {
    final result = await iAlbumsRepository.fetchAlbums(
      browseId: params.browseId,
    );

    result.fold(
      (ex) => Left(ServerFailure()),
      (ytAlbumsModel) {
        final musicItems = <MusicItemEntity>[];

        final header = ytAlbumsModel.header;
        final contents =
            (ytAlbumsModel.contents?.singleColumnBrowseResultsRenderer?.tabs ??
                    [])
                .firstOrNull
                ?.tabRenderer
                ?.content
                ?.sectionListRenderer
                ?.contents ??
            [];

        for (var content in contents) {
          final musicShelfRenderer = content.musicShelfRenderer;
          final musicCarouselShelfRenderer = content.musicCarouselShelfRenderer;

          if (musicShelfRenderer != null) {
            final innerContents = musicShelfRenderer.contents;

            for (final innerContent in innerContents) {
              final musicRenderer =
                  innerContent.musicResponsiveListItemRenderer;
              final flexColumns = musicRenderer?.flexColumns ?? [];
              final videoId = musicRenderer?.playlistItemData?.videoId;
              final thumbnail =
                  (musicRenderer
                              ?.thumbnail
                              ?.musicThumbnailRenderer
                              ?.thumbnail
                              ?.thumbnails ??
                          [])
                      .lastOrNull
                      ?.url ??
                  '';
              final watchEndpoint = musicRenderer
                  ?.overlay
                  ?.musicItemThumbnailOverlayRenderer
                  ?.content
                  ?.musicPlayButtonRenderer
                  ?.playNavigationEndpoint
                  ?.watchEndpoint;
              final playlistId = watchEndpoint?.playlistId ?? '';
              final params;

              final title =
                  flexColumns
                      .firstOrNull
                      ?.musicResponsiveListItemFlexColumnRenderer
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
            }
          }

          if (musicCarouselShelfRenderer != null) {}
        }
      },
    );

    return const Right(
      [
        AlbumsEntity(
          header: AlbumsHeaderEntity(
            title: '',
            subtitle: '',
            thumbnail: '',
          ),
          carousel: [],
          musicItems: [],
        ),
      ],
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
