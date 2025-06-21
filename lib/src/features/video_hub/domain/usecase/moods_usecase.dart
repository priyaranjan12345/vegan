import 'package:dartz/dartz.dart';

import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/usecase/usecase.dart';

import '../../../../core/usecase/no_params.dart';
import '../entity/entity.dart';
import '../repository/video_hub_repository.dart';

class MoodsUsecase implements UseCase<List<MoodEntity>, NoParams> {
  MoodsUsecase({
    required this.videoHubRepository,
  });

  final VideoHubRepository videoHubRepository;

  @override
  Future<Either<Failure, List<MoodEntity>>> call(params) async {
    final result = await videoHubRepository.fetchMoods();
    return result.fold(
      (ex) => Left(ServerFailure()),
      (ytMoodsModel) {
        final moods = <MoodEntity>[];
        final tabs =
            ytMoodsModel.contents?.singleColumnBrowseResultsRenderer?.tabs ??
                [];
        if (tabs.isNotEmpty) {
          final innerContents =
              tabs.first.tabRenderer?.content?.sectionListRenderer?.contents ??
                  [];
          if (innerContents.isNotEmpty) {
            final items = innerContents.first.gridRenderer?.items ?? [];
            for (final item in items) {
              final renderer = item.musicNavigationButtonRenderer;
              final runs = renderer?.buttonText?.runs ?? const [];
              final title = runs.firstOrNull?.text ?? '';
              final browseEndpoint = renderer?.clickCommand?.browseEndpoint;
              moods.add(
                MoodEntity(
                  label: title,
                  browseId: browseEndpoint?.browseId ?? '',
                  params: browseEndpoint?.params ?? '',
                ),
              );
            }
          }
        }

        return Right(moods);
      },
    );
  }
}
