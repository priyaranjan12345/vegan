import 'package:equatable/equatable.dart';

import 'package:dartz/dartz.dart';

import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/usecase/usecase.dart';

import '../entity/entity.dart';
import '../repository/video_hub_repository.dart';

class ContinuationUsecase
    implements UseCase<ContinuationEntity, ContinuationParams> {
  ContinuationUsecase({
    required this.videoHubRepository,
  });

  final VideoHubRepository videoHubRepository;

  @override
  Future<Either<Failure, ContinuationEntity>> call(params) async {
    final result = await videoHubRepository.fetchContinuation(
      continuationId: params.continuationId,
    );
    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytContinuationModel) {
        final items = <ContinuationContentEntity>[];
        final carousels = <ContinuationCarouselEntity>[];

        final sectionListContinuation =
            ytContinuationModel.continuationContents?.sectionListContinuation;
        final continuationId = sectionListContinuation
            ?.continuations
            .first
            .nextContinuationData
            ?.continuation;
        final outerContents = sectionListContinuation?.contents ?? [];

        /// Carousel (outer content loop)
        for (var outerContent in outerContents) {
          final musicCarouselShelfRenderer =
              outerContent.musicCarouselShelfRenderer;
          final header = musicCarouselShelfRenderer?.header;
          final carouselTitle = header
              ?.musicCarouselShelfBasicHeaderRenderer
              ?.title
              ?.runs
              .first
              .text;
          final carouselSubTitle = header
              ?.musicCarouselShelfBasicHeaderRenderer
              ?.strapline
              ?.runs
              .first
              .text;
          final innerContents = musicCarouselShelfRenderer?.contents ?? [];

          /// inner content loop
          for (var innerContent in innerContents) {
            final musicTwoRowItemRenderer =
                innerContent.musicTwoRowItemRenderer;

            final title = musicTwoRowItemRenderer?.title?.runs.first.text;
            final subtitle = musicTwoRowItemRenderer?.subtitle?.runs.first.text;
            final thumbnail = musicTwoRowItemRenderer
                ?.thumbnailRenderer
                ?.musicThumbnailRenderer
                ?.thumbnail
                ?.thumbnails
                .first
                .url;
            final browseId = musicTwoRowItemRenderer
                ?.navigationEndpoint
                ?.browseEndpoint
                ?.browseId;

            /// construct item model
            items.add(
              ContinuationContentEntity(
                title: title ?? '',
                thumbnailUrl: thumbnail ?? '',
                browseId: browseId ?? '',
                browseParams: '',
                subTitle: subtitle ?? '',
                playlistId: '',
                playlistParams: '',
              ),
            );
          }

          carousels.add(
            ContinuationCarouselEntity(
              title: carouselTitle ?? '',
              subTitle: carouselSubTitle ?? '',
              items: items,
            ),
          );
        }

        return Right(
          ContinuationEntity(
            continuationId: continuationId ?? '',
            carousels: carousels,
            heading: '',
            continuationParams: '',
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
