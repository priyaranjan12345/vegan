import 'package:audio_service/audio_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../../../domain/usecase/next_up_usecase.dart';
import '../../../service/audio_handler_service.dart';

part 'yt_player_event.dart';
part 'yt_player_state.dart';
part 'music_player_state.dart';

class YtPlayerBloc extends Bloc<YtPlayerEvent, MusicPlayerState> {
  YtPlayerBloc({
    required YoutubeExplode youtubeExplode,
    required NextUpUsecase nextUpUsecase,
    required AudioHandlerService audioHandlerService,
  }) : _youtubeExplode = youtubeExplode,
       _nextUpUsecase = nextUpUsecase,
       _audioHandlerService = audioHandlerService,
       super(const MusicPlayerState()) {
    on<LoadMusic>(loadMusic);
    on<NextMusic>(onNext);
    on<PrevMusic>(onPrevious);
    on<UpdateAudioPlayerStatus>(updateAudioPlayerStatus);
    listenAudioPlayer();
  }

  // final Player _player;
  final YoutubeExplode _youtubeExplode;
  final NextUpUsecase _nextUpUsecase;
  final AudioHandlerService _audioHandlerService;

  AudioPlayer get audioPlayer => _audioHandlerService.audioPlayer;

  // listen the audio player status and
  // also update initial status as well.
  void listenAudioPlayer() {
    // audioPlayer.playbackEventStream.listen((event) {});

    audioPlayer.playerEventStream.listen((event) {
      add(UpdateAudioPlayerStatus(isPlaying: audioPlayer.playing));
    });
  }

  Future<void> loadMusic(
    LoadMusic event,
    Emitter<MusicPlayerState> emit,
  ) async {
    final loadingState = state.copyWith(
      playerState: PlayerStatus.LOADING,
    );
    emit(loadingState);

    try {
      final videoId = event.videoId;
      final ytUrl = 'https://youtube.com/watch?v=$videoId';
      var video = await _youtubeExplode.videos.get(ytUrl);

      final streamsClient = _youtubeExplode.videos.streamsClient;
      final streamManifest = await streamsClient.getManifest(
        videoId,
        requireWatchPage: true,
        ytClients: [YoutubeApiClient.androidVr, YoutubeApiClient.ios],
      );
      final audioStream = streamManifest.audio.withHighestBitrate();
      final url = audioStream.url.toString();

      // experimental.
      _audioHandlerService.initSongs(
        songs: [
          MediaItem(
            id: url,
            title: video.title,
            artUri: Uri.parse(video.thumbnails.mediumResUrl),
          ),
        ],
      );

      _audioHandlerService.play();

      emit(
        state.copyWith(
          playerState: PlayerStatus.LOADED,
          video: VideoEntity(
            id: videoId,
            title: video.title,
            description: video.description,
            videoUrl: ytUrl,
            thubmnail: video.thumbnails.mediumResUrl,
          ),
          currentVideoId: videoId,
        ),
      );

      /// on click playlist
      if (event.playlist?.isNotEmpty ?? false) {
        emit(
          state.copyWith(
            nextUpState: NextUpStatus.LOADED,
            playlist: event.playlist,
          ),
        );
      }

      /// on click music suggestions
      if (event.playlistId != null) {
        await loadPlaylist(
          emit,
          videoId: videoId,
          playlistId: event.playlistId ?? '',
        );
      }
    } catch (e) {
      emit(state.copyWith(playerState: PlayerStatus.ERROR));
    }
  }

  Future<void> loadPlaylist(
    Emitter<MusicPlayerState> emit, {
    required String videoId,
    required String playlistId,
  }) async {
    // final playlist = await _youtubeExplode.playlists.getVideos(
    //   playlistId,
    // );

    emit(state.copyWith(nextUpState: NextUpStatus.LOADING));
    try {
      final result = await _nextUpUsecase(
        NextUpParams(
          videoId: videoId,
          playlistId: playlistId,
        ),
      );

      result.fold(
        (l) {
          emit(state.copyWith(nextUpState: NextUpStatus.ERROR));
        },
        (playlist) {
          emit(
            state.copyWith(
              nextUpState: NextUpStatus.LOADED,
              playlist: playlist,
            ),
          );
        },
      );
    } catch (e) {
      emit(state.copyWith(nextUpState: NextUpStatus.ERROR));
    }
  }

  void getDetails() {}

  void onNext(
    NextMusic event,
    Emitter<MusicPlayerState> emit,
  ) {
    final playlist = state.playlist;
    if (playlist.isNotEmpty) {
      // trigger event
      final currentVideoID = state.video?.id ?? '';
      final currentIndex = playlist.indexWhere(
        (video) => video.id == currentVideoID,
      );

      if (currentIndex < playlist.length) {
        final nextVideo = playlist[currentIndex + 1];
        add(LoadMusic(nextVideo.id));
      }

      // else continuation
    }
  }

  void onPrevious(
    PrevMusic event,
    Emitter<MusicPlayerState> emit,
  ) {
    final playlist = state.playlist;
    if (playlist.isNotEmpty) {
      // trigger event
      final currentVideoID = state.video?.id ?? '';
      final currentIndex = playlist.indexWhere(
        (video) => video.id == currentVideoID,
      );

      if (currentIndex > 0) {
        final nextVideo = playlist[currentIndex - 1];
        add(LoadMusic(nextVideo.id));
      }

      // else on action
    }
  }

  void onPlayPause() {
    final isPlaying = audioPlayer.playing;

    if (isPlaying) {
      _audioHandlerService.pause();
    } else {
      _audioHandlerService.play();
    }

    // TODO: emit the state.
  }

  void onVolumeChange() {}

  void updateAudioPlayerStatus(
    UpdateAudioPlayerStatus event,
    Emitter<MusicPlayerState> emit,
  ) {
    emit(state.copyWith(currentPosition: event.currentPosition));
  }

  @override
  Future<void> close() {
    _youtubeExplode.close();

    return super.close();
  }
}
