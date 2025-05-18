import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_kit/media_kit.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

part 'yt_player_event.dart';
part 'yt_player_state.dart';

class YtPlayerBloc extends Bloc<YtPlayerEvent, YtPlayerState> {
  YtPlayerBloc({
    required Player player,
    required YoutubeExplode youtubeExplode,
  })  : _player = player,
        _youtubeExplode = youtubeExplode,
        super(const PlayerInitState()) {
    on<LoadMusic>(loadMusic);
  }

  final Player _player;
  final YoutubeExplode _youtubeExplode;

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

      emit(
        PlayerLoadedState(
          player: _player,
          title: video.title,
          author: video.author,
          thumbnail: video.thumbnails.mediumResUrl,
          videoId: videoId,
          description: video.description,
        ),
      );
    } catch (e) {
      emit(const PlayerErrorState());
    }
  }

  void getDetails() {}

  @override
  Future<void> close() {
    _player.dispose();
    _youtubeExplode.close();

    return super.close();
  }
}
