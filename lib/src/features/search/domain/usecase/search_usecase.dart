import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/usecase/usecase.dart';

import '../entity/search_entity.dart';
import '../repository/repository.dart';

class SearchUsecase implements UseCase<SearchEntity, SearchParams> {
  const SearchUsecase({
    required this.searchRepository,
  });

  final SearchRepository searchRepository;

  @override
  Future<Either<Failure, SearchEntity>> call(SearchParams params) async {
    final result = await searchRepository.fetchSearchResult(
      input: params.input,
    );

    return result.fold(
      (l) => Left(ServerFailure()),
      (r) {
        final suggestions = <SearchSuggestion>[];
        final musicItems = <SearchSuggestionMusicItem>[];

        final contents = r.contents;

        for (final content in contents) {
          final musicShelfRenderer = content.searchSuggestionsSectionRenderer;
          
        }

        return Right(r);
      },
    );
  }
}

class SearchParams extends Equatable {
  final String? input;

  const SearchParams({
    required this.input,
  });

  @override
  List<Object?> get props => [
    input,
  ];
}
