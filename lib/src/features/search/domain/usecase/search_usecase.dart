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
          final innerContents =
              content.searchSuggestionsSectionRenderer?.contents ?? [];

          for (var innerContent in innerContents) {
            final searchSuggestionRenderer =
                innerContent.searchSuggestionRenderer;
            final musicResponsiveListItemRenderer =
                innerContent.musicResponsiveListItemRenderer;

            if (searchSuggestionRenderer != null) {
              // suggestions
              final suggestion =
                  searchSuggestionRenderer.suggestion?.runs.lastOrNull?.text ??
                  '';
              final query =
                  searchSuggestionRenderer
                      .navigationEndpoint
                      ?.searchEndpoint
                      ?.query ??
                  '';

              suggestions.add(
                SearchSuggestion(
                  suggestion: suggestion,
                  query: query,
                ),
              );
            }

            if (musicResponsiveListItemRenderer != null) {
              // music items
              final thumbnail =
                  (musicResponsiveListItemRenderer
                              .thumbnail
                              ?.musicThumbnailRenderer
                              ?.thumbnail
                              ?.thumbnails ??
                          [])
                      .lastOrNull
                      ?.url ??
                  '';
              final flexColumnRenderer = musicResponsiveListItemRenderer
                  .flexColumns
                  .firstOrNull
                  ?.musicResponsiveListItemFlexColumnRenderer;
              final title =
                  flexColumnRenderer?.text?.runs.firstOrNull?.text ?? '';
              final subTitle =
                  (musicResponsiveListItemRenderer.flexColumns
                              .elementAtOrNull(1)
                              ?.musicResponsiveListItemFlexColumnRenderer
                              ?.text
                              ?.runs ??
                          [])
                      .map((e) => e.text)
                      .join(' ');
              final videoId =
                  (flexColumnRenderer?.text?.runs ?? [])
                      .firstOrNull
                      ?.navigationEndpoint
                      ?.watchEndpoint
                      ?.videoId ??
                  '';
              final playlistId =
                  (musicResponsiveListItemRenderer.menu?.menuRenderer?.items ??
                          [])
                      .firstOrNull
                      ?.menuNavigationItemRenderer
                      ?.navigationEndpoint
                      ?.watchEndpoint
                      ?.playlistId ??
                  '';
              final browseId =
                  musicResponsiveListItemRenderer.flexColumns
                      .elementAtOrNull(1)
                      ?.musicResponsiveListItemFlexColumnRenderer
                      ?.text
                      ?.runs
                      .firstOrNull
                      ?.navigationEndpoint
                      ?.browseEndpoint
                      ?.browseId ??
                  '';

              musicItems.add(
                SearchSuggestionMusicItem(
                  thumbnail: thumbnail,
                  title: title,
                  description: subTitle,
                  id: videoId,
                  browseId: browseId,
                  playlistId: playlistId,
                  videoUrl: '',
                ),
              );
            }
          }

          /// clear
        }

        return Right(
          SearchEntity(
            searchSuggestions: [...suggestions],
            searchSuggestionMusicItems: [...musicItems],
          ),
        );
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
