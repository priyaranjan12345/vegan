import 'package:dartz/dartz.dart';

import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/function_mapper/function_mapper.dart';
import 'package:vegan/src/features/coming_soon/domain/repository/i_coming_soon_repository.dart';

import '../../../../core/usecase/no_params.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/model/model.dart';
import '../entiry/coming_soon_entity.dart';

class ComingSoonUsecase implements UseCase<List<ComingSoonEntity>, NoParams> {
  ComingSoonUsecase({
    required this.iComingSoonRepository,
  });

  final IComingSoonRepository iComingSoonRepository;

  @override
  Future<Either<Failure, List<ComingSoonEntity>>> call(NoParams params) async {
    final result = await iComingSoonRepository.getComingSoon();
    return result.fold(
      (ex) => Left(ServerFailure()),
      (videoModels) {
        final videoEntities = videoModels.map(
          (videoModel) {
            const mapper = ComingSoonEntityMapper();
            return mapper(videoModel);
          },
        ).toList();
        return Right(videoEntities);
      },
    );
  }
}

class ComingSoonEntityMapper
    implements UniFunctionMapper<ComingSoonEntity, ComingSoonModel> {
  const ComingSoonEntityMapper();

  @override
  ComingSoonEntity call(ComingSoonModel t) {
    return ComingSoonEntity(
      label: t.released,
      title: t.title,
      desc: t.plot,
      imageUrl: t.poster.replaceAll('http', 'https'),
      tags: t.genre.split(','),
    );
  }
}
