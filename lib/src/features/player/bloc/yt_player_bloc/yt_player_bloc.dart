import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_kit/media_kit.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../../domain/usecase/next_up_usecase.dart';

part 'yt_player_event.dart';
part 'yt_player_state.dart';
part 'music_player_state.dart';

class YtPlayerBloc extends Bloc<YtPlayerEvent, MusicPlayerState> {
  YtPlayerBloc({
    required Player player,
    required YoutubeExplode youtubeExplode,
    required NextUpUsecase nextUpUsecase,
  }) : _player = player,
       _youtubeExplode = youtubeExplode,
       _nextUpUsecase = nextUpUsecase,
       super(const MusicPlayerState()) {
    on<LoadMusic>(loadMusic);
    on<NextMusic>(onNext);
    on<PrevMusic>(onPrevious);
  }

  final Player _player;
  final YoutubeExplode _youtubeExplode;
  final NextUpUsecase _nextUpUsecase;

  void listenPlayer() {
    _player.stream.completed.listen(
      (event) {
        if (event) {
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
      },
    );
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
        ytClients: [YoutubeApiClient.androidVr],
      );
      final audioStream = streamManifest.audio.withHighestBitrate();
      final url = audioStream.url.toString();

      await _player.open(Media(url));
      await _player.play();

      listenPlayer();

      emit(
        state.copyWith(
          playerState: PlayerStatus.LOADED,
          player: _player,
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

  void onPlayPause() {}

  void onVolumeChange() {}

  @override
  Future<void> close() {
    _player.dispose();
    _youtubeExplode.close();

    return super.close();
  }
}
