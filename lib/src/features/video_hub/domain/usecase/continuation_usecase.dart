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
        final sectionListContinuation =
            ytContinuationModel.continuationContents?.sectionListContinuation;
        final outerContents = sectionListContinuation?.contents ?? [];

        /// Carousel
        for (var outerContent in outerContents) {
          final musicCarouselShelfRenderer =
              outerContent.musicCarouselShelfRenderer;
          final header = musicCarouselShelfRenderer?.header;
          final innerContents = musicCarouselShelfRenderer?.contents ?? [];

          // Items
          for (var innerContent in innerContents) {
            final musicTwoRowItemRenderer =
                innerContent.musicTwoRowItemRenderer;

            final carouselTitle =
                musicTwoRowItemRenderer?.title?.runs.first.text;
            final subtitle = musicTwoRowItemRenderer?.subtitle?.runs.first.text;

            /// construct item model
          }

          /// construct main model
          /// add model
        }

        return const Right(
          ContinuationEntity(
            continuationId: '',
            carousels: [
              /// carousel
              ContinuationCarouselEntity(
                title: '',
                subTitle: '',
                items: [
                  /// item
                  ContinuationContentEntity(
                    title: '',
                    thumbnailUrl: '',
                  ),
                ],
              ),
            ],
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
