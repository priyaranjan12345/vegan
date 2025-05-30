part of 'yt_player_bloc.dart';

class MusicPlayerState extends Equatable {
  const MusicPlayerState({
    this.player,
    this.video,
    this.playlistId = '',
    this.playlist = const [],
    this.playlistIndex = -1,

    /// use buildwhen
    this.nextUpState = NextUpStatus.INIT,
    this.playerState = PlayerStatus.INIT,
  });

  final NextUpStatus nextUpState;
  final PlayerStatus playerState;

  final Player? player;
  final VideoEntity? video;
  final String playlistId;
  final List<VideoEntity> playlist;
  final int playlistIndex;

  @override
  List<Object?> get props => [
    nextUpState,
    playerState,
    player,
    video,
    playlistId,
    playlist,
    playlistIndex,
  ];

  MusicPlayerState copyWith({
    NextUpStatus? nextUpState,
    PlayerStatus? playerState,
    Player? player,
    VideoEntity? video,
    String? playlistId,
    List<VideoEntity>? playlist,
    int? playlistIndex,
  }) {
    return MusicPlayerState(
      nextUpState: nextUpState ?? this.nextUpState,
      playerState: playerState ?? this.playerState,
      player: player ?? this.player,
      video: video ?? this.video,
      playlistId: playlistId ?? this.playlistId,
      playlist: playlist ?? this.playlist,
      playlistIndex: playlistIndex ?? this.playlistIndex,
    );
  }
}

enum PlayerStatus {
  INIT,
  LOADING,
  LOADED,
  ERROR,
}

enum NextUpStatus {
  INIT,
  LOADING,
  LOADED,
  ERROR,
}
