import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:vegan/src/features/coming_soon/data/datasource/coming_soon_datasource.dart';
import 'package:vegan/src/features/coming_soon/data/model/coming_soon_model.dart';
import 'package:vegan/src/features/coming_soon/domain/repository/i_coming_soon_repository.dart';

import '../../../../core/error/exception/custom_exception.dart';

class ComingSoonRepository implements IComingSoonRepository {
  ComingSoonRepository({
    required this.iComingSoonDatasource,
  });

  final IComingSoonDatasource iComingSoonDatasource;

  @override
  Future<Either<Exception, List<ComingSoonModel>>> getComingSoon() async {
    final response = await iComingSoonDatasource.getComingSoonResponse();

    if (response.statusCode == 200) {
      try {
        final body = json.decode(response.body) as List;
        final comingSoonModels =
            body.map((e) => ComingSoonModel.fromMap(e)).toList();
        return Right(comingSoonModels);
      } catch (_) {
        return Left(ServerException());
      }
    }

    return Left(ServerException());
  }
}
