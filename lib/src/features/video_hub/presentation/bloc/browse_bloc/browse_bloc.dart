import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    on<BrowseInitEvent>(loadInitialContent);
    on<BrowseContinuationEvent>(loadContinuationContent);
  }

  final VideoHubUsecase _videoHubUsecase;
  final ContinuationUsecase _continuationUsecase;

  void loadInitialContent(
    BrowseInitEvent event,
    Emitter<BrowseState> emit,
  ) async {
    try {
      final result = await _videoHubUsecase(
        const Params(
          browse: Browse.initial,
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
