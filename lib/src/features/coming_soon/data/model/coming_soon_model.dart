import 'dart:convert';

import 'package:flutter/foundation.dart';

class ComingSoonModel {
  final String title;
  final String year;
  final String rated;
  final String released;
  final String runtime;
  final String genre;
  final String director;
  final String writer;
  final String actors;
  final String plot;
  final String language;
  final String country;
  final String awards;
  final String poster;
  final String metascore;
  final String imdbRating;
  final String imdbVotes;
  final String imdbID;
  final String type;
  final String response;
  final List<String> images;
  ComingSoonModel({
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.language,
    required this.country,
    required this.awards,
    required this.poster,
    required this.metascore,
    required this.imdbRating,
    required this.imdbVotes,
    required this.imdbID,
    required this.type,
    required this.response,
    required this.images,
  });

  ComingSoonModel copyWith({
    String? title,
    String? year,
    String? rated,
    String? released,
    String? runtime,
    String? genre,
    String? director,
    String? writer,
    String? actors,
    String? plot,
    String? language,
    String? country,
    String? awards,
    String? poster,
    String? metascore,
    String? imdbRating,
    String? imdbVotes,
    String? imdbID,
    String? type,
    String? response,
    List<String>? images,
  }) {
    return ComingSoonModel(
      title: title ?? this.title,
      year: year ?? this.year,
      rated: rated ?? this.rated,
      released: released ?? this.released,
      runtime: runtime ?? this.runtime,
      genre: genre ?? this.genre,
      director: director ?? this.director,
      writer: writer ?? this.writer,
      actors: actors ?? this.actors,
      plot: plot ?? this.plot,
      language: language ?? this.language,
      country: country ?? this.country,
      awards: awards ?? this.awards,
      poster: poster ?? this.poster,
      metascore: metascore ?? this.metascore,
      imdbRating: imdbRating ?? this.imdbRating,
      imdbVotes: imdbVotes ?? this.imdbVotes,
      imdbID: imdbID ?? this.imdbID,
      type: type ?? this.type,
      response: response ?? this.response,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'year': year,
      'rated': rated,
      'released': released,
      'runtime': runtime,
      'genre': genre,
      'director': director,
      'writer': writer,
      'actors': actors,
      'plot': plot,
      'language': language,
      'Country': country,
      'Awards': awards,
      'Poster': poster,
      'Metascore': metascore,
      'imdbRating': imdbRating,
      'imdbVotes': imdbVotes,
      'imdbID': imdbID,
      'Type': type,
      'Response': response,
      'Images': images,
    };
  }

  factory ComingSoonModel.fromMap(Map<String, dynamic> map) {
    return ComingSoonModel(
      title: map['title'] as String,
      year: map['year'] as String,
      rated: map['rated'] as String,
      released: map['released'] as String,
      runtime: map['runtime'] as String,
      genre: map['genre'] as String,
      director: map['director'] as String,
      writer: map['writer'] as String,
      actors: map['actors'] as String,
      plot: map['plot'] as String,
      language: map['language'] as String,
      country: map['Country'] as String,
      awards: map['Awards'] as String,
      poster: map['Poster'] as String,
      metascore: map['Metascore'] as String,
      imdbRating: map['imdbRating'] as String,
      imdbVotes: map['imdbVotes'] as String,
      imdbID: map['imdbID'] as String,
      type: map['Type'] as String,
      response: map['Response'] as String,
      images: List<String>.from(map['Images']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ComingSoonModel.fromJson(String source) =>
      ComingSoonModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ComingSoonModel(title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, Country: $country, Awards: $awards, Poster: $poster, Metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, Type: $type, Response: $response, Images: $images)';
  }

  @override
  bool operator ==(covariant ComingSoonModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.year == year &&
        other.rated == rated &&
        other.released == released &&
        other.runtime == runtime &&
        other.genre == genre &&
        other.director == director &&
        other.writer == writer &&
        other.actors == actors &&
        other.plot == plot &&
        other.language == language &&
        other.country == country &&
        other.awards == awards &&
        other.poster == poster &&
        other.metascore == metascore &&
        other.imdbRating == imdbRating &&
        other.imdbVotes == imdbVotes &&
        other.imdbID == imdbID &&
        other.type == type &&
        other.response == response &&
        listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return title.hashCode ^
        year.hashCode ^
        rated.hashCode ^
        released.hashCode ^
        runtime.hashCode ^
        genre.hashCode ^
        director.hashCode ^
        writer.hashCode ^
        actors.hashCode ^
        plot.hashCode ^
        language.hashCode ^
        country.hashCode ^
        awards.hashCode ^
        poster.hashCode ^
        metascore.hashCode ^
        imdbRating.hashCode ^
        imdbVotes.hashCode ^
        imdbID.hashCode ^
        type.hashCode ^
        response.hashCode ^
        images.hashCode;
  }
}
