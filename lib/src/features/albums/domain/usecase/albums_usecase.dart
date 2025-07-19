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

          if(musicShelfRenderer != null) {
            final videoId;
            final thumbnail;
            final browseId;
            final playlistId;
            final params;
          }

          if(musicCarouselShelfRenderer != null) {}

        }
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
