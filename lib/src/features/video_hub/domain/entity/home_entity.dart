import 'package:equatable/equatable.dart';

import 'video_entity.dart';

class HomeEntity extends Equatable {
  const HomeEntity({
    required this.suggestions,
  });

  final List<SuggestionEntity> suggestions;

  @override
  List<Object?> get props => [
        suggestions,
      ];
}

class SuggestionEntity extends Equatable {
  const SuggestionEntity({
    required this.heading,
    required this.videos,
  });

  final String heading;
  final List<VideoEntity> videos;

  @override
  List<Object?> get props => [
        heading,
        videos,
      ];
}
