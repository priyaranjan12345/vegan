import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_kit/media_kit.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

import '../../domain/usecase/next_up_usecase.dart';

part 'yt_player_event.dart';
part 'yt_player_state.dart';

class YtPlayerBloc extends Bloc<YtPlayerEvent, YtPlayerState> {
  YtPlayerBloc({
    required Player player,
    required YoutubeExplode youtubeExplode,
    required NextUpUsecase nextUpUsecase,
  }) : _player = player,
       _youtubeExplode = youtubeExplode,
       _nextUpUsecase = nextUpUsecase,
       super(const PlayerInitState()) {
    on<LoadMusic>(loadMusic);
  }

  final Player _player;
  final YoutubeExplode _youtubeExplode;
  final NextUpUsecase _nextUpUsecase;

  Future<void> loadMusic(LoadMusic event, Emitter<YtPlayerState> emit) async {
    emit(const PlayerLoadingState());

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
      await _player.pause();

      // final playlist = await _youtubeExplode.playlists.get('xxxxx');

      emit(
        PlayerLoadedState(
          player: _player,
          title: video.title,
          author: video.author,
          thumbnail: video.thumbnails.mediumResUrl,
          videoId: videoId,
          description: video.description,
          playlistId: event.playlistId ?? '',
          playlistIndex: 0,
        ),
      );
    } catch (e) {
      emit(const PlayerErrorState());
    }
  }

  Future<void> loadPlaylist(String videoId, String playlistId) async {
    // final playlist = await _youtubeExplode.playlists.getVideos(
    //   playlistId,
    // );

    // final result = await _nextUpUsecase(
    //   NextUpParams(
    //     videoId: videoId,
    //     playlistId: playlistId,
    //   ),
    // );

    if (state is PlayerLoadedState) {}
  }

  void getDetails() {}

  @override
  Future<void> close() {
    _player.dispose();
    _youtubeExplode.close();

    return super.close();
  }
}
