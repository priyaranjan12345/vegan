part of 'search_bloc.dart';

class SearchState extends Equatable {
  const SearchState({
    this.status = SearchStatus.initial,
    this.searchEntity,
  });

  final SearchStatus status;
  final SearchEntity? searchEntity;

  SearchState copyWith({
    SearchStatus? status,
    SearchEntity? searchEntity,
  }) {
    return SearchState(
      status: status ?? this.status,
      searchEntity: searchEntity ?? this.searchEntity,
    );
  }

  @override
  List<Object?> get props => [
    status,
    searchEntity,
  ];
}

enum SearchStatus { initial, loading, success, failure }
