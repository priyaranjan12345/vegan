import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../domain/entity/moods_entity.dart';
import '../../../domain/usecase/usecase.dart';

part 'browse_event.dart';
part 'browse_state.dart';

class BrowseBloc extends Bloc<BrowseEvent, BrowseState> {
  BrowseBloc({
    required VideoHubUsecase videoHubUsecase,
    required ContinuationUsecase continuationUsecase,
  }) : _videoHubUsecase = videoHubUsecase,
       _continuationUsecase = continuationUsecase,
       super(const BrowseState()) {
    on<BrowseInitEvent>(
      loadInitialContent,
      transformer: throttleDroppable(const Duration(milliseconds: 600)),
    );
    on<BrowseMoodEvent>(
      loadMoodContents,
      transformer: throttleDroppable(const Duration(milliseconds: 600)),
    );
    on<BrowseContinuationEvent>(
      loadContinuationContent,
      transformer: throttleDroppable(const Duration(milliseconds: 600)),
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

  void loadInitialContent(
    BrowseInitEvent event,
    Emitter<BrowseState> emit,
  ) async {
    try {
      final result = await _videoHubUsecase(
        const Params(browse: Browse.initial),
      );

      result.fold(
        (l) => emit(state.copyWith(browseStatus: BrowseStatus.failure)),
        (r) => emit(
          state.copyWith(
            browseStatus: BrowseStatus.success,
            moods: r.moods,
            browseCarousels: [...r.videoSuggestions, ...r.playlistSuggestions],
            continuationId: r.continuationId,
          ),
        ),
      );
    } catch (_) {
      emit(state.copyWith(browseStatus: BrowseStatus.failure));
    }
  }

  void loadMoodContents(
    BrowseMoodEvent event,
    Emitter<BrowseState> emit,
  ) async {
    try {
      final result = await _videoHubUsecase(
        Params(
          params: event.params,
          browse: Browse.moods,
        ),
      );

      result.fold(
        (l) => emit(state.copyWith(browseStatus: BrowseStatus.failure)),
        (r) => emit(
          state.copyWith(
            browseStatus: BrowseStatus.success,
            moods: r.moods,
            browseCarousels: [...r.videoSuggestions, ...r.playlistSuggestions],
            continuationId: r.continuationId,
          ),
        ),
      );
    } catch (_) {
      emit(state.copyWith(browseStatus: BrowseStatus.failure));
    }
  }

  void loadContinuationContent(
    BrowseContinuationEvent event,
    Emitter<BrowseState> emit,
  ) async {
    if (state.hasReachedMax) return;

    try {
      final result = await _continuationUsecase(
        ContinuationParams(continuationId: event.continuationId),
      );

      result.fold(
        (l) => emit(state.copyWith(hasReachedMax: true)),
        (r) {
          emit(
            state.copyWith(
              browseCarousels: [
                ...state.browseCarousels,
                ...r.videoSuggestions,
                ...r.playlistSuggestions,
              ],
              continuationId: r.continuationId,
              hasReachedMax: r.continuationId.isEmpty,
            ),
          );
        },
      );
    } catch (_) {}
  }
}
