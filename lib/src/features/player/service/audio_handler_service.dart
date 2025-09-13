import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class AudioHandlerService extends BaseAudioHandler
    with QueueHandler, SeekHandler {
  AudioHandlerService(this.audioPlayer);

  final AudioPlayer audioPlayer;

  @override
  Future<void> play() => audioPlayer.play();

  @override
  Future<void> pause() => audioPlayer.pause();

  @override
  Future<void> stop() => audioPlayer.stop();

  @override
  Future<void> seek(Duration position) => audioPlayer.seek(position);

  @override
  Future<void> skipToQueueItem(int index) async {
    await audioPlayer.seek(Duration.zero, index: index);
    play();
  }

  @override
  Future<void> skipToNext() => audioPlayer.seekToNext();

  @override
  Future<void> skipToPrevious() => audioPlayer.seekToPrevious();

  // Function to create an audio source from a MediaItem
  // UriAudioSource _createAudioSource(MediaItem item) {
  //   return ProgressiveAudioSource(Uri.parse(item.id));
  // }

  // Listen for changes in the current song index and update the media item
  void _listenForCurrentSongIndexChanges() {
    audioPlayer.currentIndexStream.listen((index) {
      final playlist = queue.value;
      if (index == null || playlist.isEmpty) return;
      mediaItem.add(playlist[index]);
    });
  }

  // Broadcast the current playback state based on the received PlaybackEvent
  void _broadcastState(PlaybackEvent event) {
    playbackState.add(
      playbackState.value.copyWith(
        controls: [
          MediaControl.skipToPrevious,
          if (audioPlayer.playing) MediaControl.pause else MediaControl.play,
          MediaControl.skipToNext,
        ],
        systemActions: {
          MediaAction.seek,
          MediaAction.seekForward,
          MediaAction.seekBackward,
        },
        processingState: const {
          ProcessingState.idle: AudioProcessingState.idle,
          ProcessingState.loading: AudioProcessingState.loading,
          ProcessingState.buffering: AudioProcessingState.buffering,
          ProcessingState.ready: AudioProcessingState.ready,
          ProcessingState.completed: AudioProcessingState.completed,
        }[audioPlayer.processingState]!,
        playing: audioPlayer.playing,
        updatePosition: audioPlayer.position,
        bufferedPosition: audioPlayer.bufferedPosition,
        speed: audioPlayer.speed,
        queueIndex: event.currentIndex,
      ),
    );
  }

  // Function to initialize the songs and set up the audio player
  Future<void> initSongs({required List<MediaItem> songs}) async {
    // Listen for playback events and broadcast the state
    audioPlayer.playbackEventStream.listen(_broadcastState);

    // Create a list of audio sources from the provided songs
    // final audioSource = songs.map(_createAudioSource).toList();

    // Set the audio source of the audio player to the concatenation of the audio sources
    await audioPlayer.setAudioSource(
      AudioSource.uri(Uri.parse(songs.first.id)),
      //ConcatenatingAudioSource(children: audioSource),
    );

    // Add the songs to the queue
    queue.value.clear();
    queue.value.addAll(songs);
    queue.add(queue.value);

    // Listen for changes in the current song index
    _listenForCurrentSongIndexChanges();

    // Listen for processing state changes and skip to the next song when completed
    audioPlayer.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) skipToNext();
    });
  }

  void dispose() {
    audioPlayer.dispose();
    queue.value.clear();
  }
}
