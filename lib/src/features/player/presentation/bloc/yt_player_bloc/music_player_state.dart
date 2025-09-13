part of 'yt_player_bloc.dart';

class MusicPlayerState extends Equatable {
  const MusicPlayerState({
    this.video,
    this.playlistId = '',
    this.playlist = const [],
    this.playlistIndex = -1,

    /// use buildwhen
    this.nextUpState = NextUpStatus.INIT,
    this.playerState = PlayerStatus.init,

    this.currentVideoId,

    this.totalDuration = const Duration(seconds: 0),
    this.isPlaying = false,
  });

  final NextUpStatus nextUpState;
  final PlayerStatus playerState;

  final VideoEntity? video;
  final String playlistId;
  final List<VideoEntity> playlist;
  final int playlistIndex;

  final String? currentVideoId;

  final Duration totalDuration;
  final bool isPlaying;

  @override
  List<Object?> get props => [
    nextUpState,
    playerState,
    video,
    playlistId,
    playlist,
    playlistIndex,
    currentVideoId,
    totalDuration,
    isPlaying,
  ];

  MusicPlayerState copyWith({
    NextUpStatus? nextUpState,
    PlayerStatus? playerState,
    VideoEntity? video,
    String? playlistId,
    List<VideoEntity>? playlist,
    int? playlistIndex,
    String? currentVideoId,
    Duration? totalDuration,
    bool? isPlaying,
  }) {
    return MusicPlayerState(
      nextUpState: nextUpState ?? this.nextUpState,
      playerState: playerState ?? this.playerState,
      video: video ?? this.video,
      playlistId: playlistId ?? this.playlistId,
      playlist: playlist ?? this.playlist,
      playlistIndex: playlistIndex ?? this.playlistIndex,
      currentVideoId: currentVideoId ?? this.currentVideoId,
      totalDuration: totalDuration ?? this.totalDuration,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }
}

enum PlayerStatus {
  init,
  loading,
  loaded,
  error,
}

enum NextUpStatus {
  INIT,
  LOADING,
  LOADED,
  ERROR,
}



class PlayerState extends Equatable {
  @override
  List<Object?> get props => [];
}
