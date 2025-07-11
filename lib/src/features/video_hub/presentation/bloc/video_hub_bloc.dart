import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:vegan/src/features/video_hub/domain/entity/entity.dart';

import '../../domain/usecase/usecase.dart';

part 'video_hub_event.dart';
part 'video_hub_state.dart';

class VideoHubBloc extends Bloc<VideoHubEvent, VideoHubState> {
  VideoHubBloc({
    required VideoHubUsecase videoHubUsecase,
    required ContinuationUsecase continuationUsecase,
  }) : _videoHubUsecase = videoHubUsecase,
       _continuationUsecase = continuationUsecase,
       super(const VideoHubInitial()) {
    on<GetVideoHubEvent>(getVideos);
    on<LoadMoodMusic>(loadMoodMusic);
    on<LoadContinuation>(
      loadContinuation,
      transformer: throttleDroppable(const Duration(milliseconds: 100)),
    );
  }

  final VideoHubUsecase _videoHubUsecase;
  final ContinuationUsecase _continuationUsecase;

  /// prevent span calling.
  EventTransformer<E> throttleDroppable<E>(Duration duration) {
    return (events, mapper) {
      return droppable<E>().call(events.throttle(duration), mapper);
    };
  }

  Future<void> getVideos(
    GetVideoHubEvent event,
    Emitter<VideoHubState> emit,
  ) async {
    emit(const VideoHubLoading());
    try {
      final result = await _videoHubUsecase(
        const Params(
          browse: Browse.initial,
        ),
      );
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
      final result = await _videoHubUsecase(
        Params(
          params: event.params,
          browse: Browse.moods,
        ),
      );
      result.fold(
        (l) => emit(const VideoHubError()),
        (r) => emit(VideoHubLoaded(homeEntity: r)),
      );
    } catch (_) {
      emit(const VideoHubError());
    }
  }

  /// load more musics and playlists
  void loadContinuation(
    LoadContinuation event,
    Emitter<VideoHubState> emit,
  ) async {
    // if (state is! VideoHubLoaded) return;
    emit(const VideoHubLoading());
    try {
      final result = await _continuationUsecase(
        ContinuationParams(continuationId: event.continuationId),
      );

      result.fold(
        (l) => emit(const VideoHubError()),
        (r) {
          emit(VideoHubLoaded(homeEntity: r));
        },
      );
    } catch (e) {
      print(e);
      emit(const VideoHubError());
    }
  }
}
