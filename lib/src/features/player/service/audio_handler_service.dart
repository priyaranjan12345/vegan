import 'package:audio_service/audio_service.dart';
import 'package:media_kit/media_kit.dart';

class AudioHandlerService extends BaseAudioHandler
    with QueueHandler, SeekHandler {
  AudioHandlerService(this.player) {
    // add listen.
    playerListener();
  }

  final Player player;

  // audio-serivce config along with Player
  void playerListener() {
    // Listen for playback changes
    player.stream.position.listen((position) {
      playbackState.add(
        playbackState.value.copyWith(
          updatePosition: position,
        ),
      );
    });

    player.stream.buffer.listen((buffered) {
      playbackState.add(
        playbackState.value.copyWith(
          bufferedPosition: buffered,
        ),
      );
    });

    player.stream.playing.listen((playing) {
      playbackState.add(
        playbackState.value.copyWith(
          playing: playing,
          controls: [
            MediaControl.skipToPrevious,
            if (playing) MediaControl.pause else MediaControl.play,
            MediaControl.skipToNext,
          ],
        ),
      );
    });

    player.stream.completed.listen((completed) {
      if (completed) skipToNext();
    });
  }

  // Function to initialize the songs and set up the audio player
  Future<void> initSongs({required List<MediaItem> songs}) async {
    // Add songs to queue
    queue.value.clear();
    queue.value.addAll(songs);
    queue.add(queue.value);

    // Convert to Media (media_kit expects a list of URIs)
    final medias = songs.map((item) => Media(item.id)).toList();

    // Open the playlist
    await player.open(Playlist(medias), play: false);

    // Listen for current index changes
    player.stream.playlist.listen((playlist) {
      if (queue.value.isEmpty) {
        return;
      }

      mediaItem.add(queue.value[playlist.index]);
    });
  }

  @override
  Future<void> play() => player.play();

  @override
  Future<void> pause() => player.pause();

  @override
  Future<void> stop() => player.stop();

  @override
  Future<void> seek(Duration position) => player.seek(position);

  @override
  Future<void> skipToQueueItem(int index) async {
    await player.jump(index);
    play();
  }

  @override
  Future<void> skipToNext() => player.next();

  @override
  Future<void> skipToPrevious() => player.previous();
}
