import 'dart:convert';

import 'package:equatable/equatable.dart';

class SongEntity extends Equatable {
  const SongEntity({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.artist,
    required this.author,
    required this.sourceUrl,
  });

  final String id;
  final String title;
  final String subTitle;
  final String artist;
  final String author;
  final String sourceUrl;

  @override
  List<Object?> get props => [
    id,
    title,
    subTitle,
    artist,
    author,
    sourceUrl,
  ];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'subTitle': subTitle,
      'artist': artist,
      'author': author,
      'sourceUrl': sourceUrl,
    };
  }

  factory SongEntity.fromMap(Map<String, dynamic> map) {
    return SongEntity(
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      subTitle: map['subTitle'] ?? '',
      artist: map['artist'] ?? '',
      author: map['author'] ?? '',
      sourceUrl: map['sourceUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SongEntity.fromJson(String source) =>
      SongEntity.fromMap(json.decode(source));
}
