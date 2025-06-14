import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';

import '../../domain/usecase/usecase.dart';

part 'video_hub_event.dart';
part 'video_hub_state.dart';

class VideoHubBloc extends Bloc<VideoHubEvent, VideoHubState> {
  VideoHubBloc({
    required VideoHubUsecase videoHubUsecase,
  }) : _videoHubUsecase = videoHubUsecase,
       super(const VideoHubInitial()) {
    on<GetVideoHubEvent>(getVideos);
    on<LoadMoodMusic>(loadMoodMusic);
  }

  final VideoHubUsecase _videoHubUsecase;

  Future<void> getVideos(
    GetVideoHubEvent event,
    Emitter<VideoHubState> emit,
  ) async {
    emit(const VideoHubLoading());
    try {
      final result = await _videoHubUsecase(const Params());
      result.fold(
        (l) => emit(const VideoHubError()),
        (r) => emit(VideoHubLoaded(homeEntity: r)),
      );
    } catch (_) {
      emit(const VideoHubError());
    }
  }

  void loadMoodMusic(
    LoadMoodMusic event,
    Emitter<VideoHubState> emit,
  ) async {
    emit(const VideoHubLoading());
    try {
      final result = await _videoHubUsecase(Params(params: event.params));
      result.fold(
        (l) => emit(const VideoHubError()),
        (r) => emit(VideoHubLoaded(homeEntity: r)),
      );
    } catch (_) {
      emit(const VideoHubError());
    }
  }
}
