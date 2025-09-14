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
    on<PlayPauseEvent>(onPlayPause);
    on<SeekPositionEvent>(onSeekPosition);
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
    // audioPlayer.playbackEventStream.listen((event) {
    //   event.
    // });

    audioPlayer.playerEventStream.listen((event) {
      if (state.isPlaying != event.playing) {
        add(UpdateAudioPlayerStatus(isPlaying: event.playing));
      }
    });

    // _audioHandlerService.playbackState.distinct().listen((event) {
    //   event.position
    // });
  }

  Future<void> loadMusic(
    LoadMusic event,
    Emitter<MusicPlayerState> emit,
  ) async {
    final loadingState = state.copyWith(
      playerState: PlayerStatus.loading,
    );
    emit(loadingState);

    try {
      print('object-o');
      final videoId = event.videoId;
      final ytUrl = 'https://youtube.com/watch?v=$videoId';
      var video = await _youtubeExplode.videos.get(ytUrl);

      print('object-1');

      final title = video.title;
      final description = video.description;
      final author = video.author;
      final thumbnail = video.thumbnails.standardResUrl;
      final duration = video.duration;

      final url = await getAudioUrl(videoId);
      print('object-2');

      // experimental.
      _audioHandlerService.initSongs(
        songs: [
          MediaItem(
            id: url,
            title: title,
            artUri: Uri.parse(thumbnail),
            duration: duration,
            artist: author,
          ),
        ],
      );

      _audioHandlerService.play();

      emit(
        state.copyWith(
          playerState: PlayerStatus.loaded,
          video: VideoEntity(
            id: videoId,
            title: title,
            description: description,
            videoUrl: ytUrl,
            thumbnail: thumbnail,
          ),
          currentVideoId: videoId,
          totalDuration: duration,
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
      emit(state.copyWith(playerState: PlayerStatus.error));
    }
  }

  void emitVideoDetails() {}

  Future<String> getAudioUrl(String videoId) async {
    final streamsClient = _youtubeExplode.videos.streamsClient;
    final streamManifest = await streamsClient.getManifest(
      videoId,
      requireWatchPage: true,
      ytClients: [YoutubeApiClient.androidVr, YoutubeApiClient.ios],
    );
    final audioStream = streamManifest.audio.withHighestBitrate();
    final url = audioStream.url.toString();

    return url;
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

  void onPlayPause(
    PlayPauseEvent event,
    Emitter<MusicPlayerState> emit,
  ) {
    final isPlaying = audioPlayer.playing;

    if (isPlaying) {
      _audioHandlerService.pause();
    } else {
      _audioHandlerService.play();
    }
  }

  void onSeekPosition(
    SeekPositionEvent event,
    Emitter<MusicPlayerState> emit,
  ) {
    _audioHandlerService.seek(event.position);
  }

  void updateAudioPlayerStatus(
    UpdateAudioPlayerStatus event,
    Emitter<MusicPlayerState> emit,
  ) {
    emit(state.copyWith(isPlaying: event.isPlaying));
  }

  // volume
  // repeat

  @override
  Future<void> close() {
    _youtubeExplode.close();

    return super.close();
  }
}
