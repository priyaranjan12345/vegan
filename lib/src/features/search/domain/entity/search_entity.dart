import 'package:equatable/equatable.dart';

class SearchEntity extends Equatable {
  const SearchEntity({
    required this.searchSuggestions,
    required this.searchSuggestionMusicItems,
  });

  final List<SearchSuggestion> searchSuggestions;
  final List<SearchSuggestionMusicItem> searchSuggestionMusicItems;

  @override
  List<Object?> get props => [
    searchSuggestions,
    searchSuggestionMusicItems,
  ];
}

class SearchSuggestion extends Equatable {
  const SearchSuggestion({
    required this.suggestion,
    required this.query,
  });

  final String suggestion;
  final String query;

  @override
  List<Object?> get props => [
    suggestion,
    query,
  ];
}

class SearchSuggestionMusicItem extends Equatable {
  const SearchSuggestionMusicItem({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.thubmnail,
    this.browseId = '',
    this.playlistId = '',
    this.artist = '',
  });

  final String id;
  final String title;
  final String description;
  final String artist;
  final String videoUrl;
  final String thubmnail;
  final String browseId;
  final String playlistId;

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    videoUrl,
    thubmnail,
    browseId,
    playlistId,
    artist,
  ];
}
