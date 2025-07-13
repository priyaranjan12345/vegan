import 'package:audio_service/audio_service.dart';
import 'package:media_kit/media_kit.dart';

class AudioHandlerService extends BaseAudioHandler
    with QueueHandler, SeekHandler {
  AudioHandlerService(this.player);

  final Player player;

  @override
  Future<void> play() => player.play();

  @override
  Future<void> pause() => player.pause();

  @override
  Future<void> stop() => player.stop();

  @override
  Future<void> seek(Duration position) => player.seek(position);

  // @override
  // Future<void> skipToQueueItem(int i) => player.seek(
  //   Duration.zero,
  //   index: i,
  // );
}
