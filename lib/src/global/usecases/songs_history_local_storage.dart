import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:vegan/src/core/error/failure/failure.dart';
import 'package:vegan/src/core/modules/local_storage/i_local_storage.dart';
import 'package:vegan/src/core/usecase/usecase.dart';
import 'package:vegan/src/global/entities/entities.dart';

class SongsHistoryLocalStorage
    implements UseCase<List<SongEntity>, SongsHistoryParams?> {
  const SongsHistoryLocalStorage({
    required ILocalStorage iLocalStorage,
  }) : _iLocalStorage = iLocalStorage;

  final ILocalStorage _iLocalStorage;

  final _songsHistoryKey = 'songs_history';

  @override
  Future<Either<Failure, List<SongEntity>>> call(SongsHistoryParams? params) {
    if (params != null) {
      addSong(params.songEntity);
    }

    return Future.value(Right(getSongs()));
  }

  List<SongEntity> getSongs() {
    final songsJson = _iLocalStorage.get(key: _songsHistoryKey);

    if (songsJson != null) {
      final songs = json.decode(songsJson) as List<dynamic>;
      return songs.map((song) => SongEntity.fromMap(song)).toList();
    }

    return [];
  }

  /// this method will add the new [SongEntity]
  ///
  /// if already available then it will replace the existing, to update the access date and time.
  Future<void> addSong(SongEntity songEntity) async {
    final songs = getSongs();
    final existSong = filterSong(songEntity.id);

    if (existSong != null) {
      songs.remove(existSong);
    }

    songs.add(songEntity);

    final songsJson = json.encode(songs.map((e) => e.toMap()).toList());
    await _iLocalStorage.put(key: _songsHistoryKey, value: songsJson);
  }

  /// delete song from the histry bu song ID.
  Future<void> deleteSong(String songId) async {
    final songs = getSongs();
    songs.removeWhere((song) => song.id == songId);
    final songsJson = json.encode(songs.map((e) => e.toMap()).toList());
    await _iLocalStorage.put(key: _songsHistoryKey, value: songsJson);
  }

  /// clear all history
  Future<void> clearHistory() async {
    await _iLocalStorage.put(key: _songsHistoryKey, value: '[]');
  }

  /// filter song by ID
  SongEntity? filterSong(String songId) {
    final songs = getSongs();

    for (final song in songs) {
      if (song.id == songId) {
        return song;
      }
    }

    return null;
  }
}

class SongsHistoryParams extends Equatable {
  const SongsHistoryParams({
    required this.songEntity,
  });

  final SongEntity songEntity;

  @override
  List<Object?> get props => [
    songEntity,
  ];
}
