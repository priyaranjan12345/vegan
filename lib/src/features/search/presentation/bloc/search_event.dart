part of 'search_bloc.dart';

@immutable
sealed class SearchEvent extends Equatable {
  const SearchEvent();
}

final class SearchInput extends SearchEvent {
  const SearchInput({this.input});

  final String? input;
  
  @override
  List<Object?> get props => [
    input,
  ];
}