import 'package:dartz/dartz.dart';

import '../../domain/repository/search_repository.dart';
import '../datasource/search_datasource.dart';
import '../model/yt_search_model.dart';

class ISearchRepository implements SearchRepository {
  final SearchDatasource searchDatasource;

  ISearchRepository({required this.searchDatasource});

  @override
  Future<Either<Exception, YtSearchModel>> fetchSearchResult({
    String? input,
  }) async {
    try {
      final response = await searchDatasource.getSearchResponse(input: input);

      if (response.statusCode == 200) {
        return Right(YtSearchModel.fromJson(response.data));
      } else {
        return Left(
          Exception('Failed to fetch search result: ${response.statusCode}'),
        );
      }
    } catch (e) {
      return Left(Exception('Failed to fetch search result: ${e.toString()}'));
    }
  }
}
