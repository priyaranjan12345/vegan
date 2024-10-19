import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:video_player/video_player.dart';

part 'video_player_event.dart';
part 'video_player_state.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  VideoPlayerBloc({
    required VideoPlayerController controller,
  })  : _controller = controller,
        super(VideoPlayerState(videoPlayerController: controller)) {
    on<VideoPlayerEvent>(initVideoController);
  }

  final VideoPlayerController _controller;

  Future<void> initVideoController(
    VideoPlayerEvent event,
    Emitter<VideoPlayerState> emit,
  ) async {
    /// add listener
    _controller.addListener(() {
      final controllerValue = _controller.value;

      if (controllerValue.hasError &&
          state.status != VideoControllerStatus.error) {
        emit(state.copyWith(status: VideoControllerStatus.error));
      }
    });

    emit(
      state.copyWith(
        status: VideoControllerStatus.initializing,
      ),
    );
    try {
      await _controller.initialize();
      emit(
        state.copyWith(
          status: VideoControllerStatus.initialized,
        ),
      );
    } catch (e) {
      emit(state.copyWith(status: VideoControllerStatus.error));
    }
  }

  @override
  Future<void> close() {
    _controller
      ..pause()
      ..dispose();
    return super.close();
  }
}
