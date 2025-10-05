import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../domain/entity/entity.dart';
import '../../domain/usecase/search_usecase.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required SearchUsecase searchUsecase,
  }) : _searchUsecase = searchUsecase,
       super(const SearchState()) {
    on<SearchInput>(
      search,
      transformer: debounceDroppable(const Duration(milliseconds: 1000)),
    );
  }

  final SearchUsecase _searchUsecase;

  /// throttle.
  EventTransformer<E> throttleDroppable<E>(Duration duration) {
    return (events, mapper) {
      return droppable<E>().call(events.throttle(duration), mapper);
    };
  }

  /// debounce.
  EventTransformer<E> debounceDroppable<E>(Duration duration) {
    return (events, mapper) {
      return droppable<E>().call(events.debounce(duration), mapper);
    };
  }

  Future<void> search(SearchInput event, Emitter<SearchState> emit) async {
    // if (state.status != SearchStatus.initial) {
    //   emit(state.copyWith(status: SearchStatus.loading));
    // }

    try {
      final result = await _searchUsecase(SearchParams(input: event.input));

      result.fold(
        (l) => emit(state.copyWith(status: SearchStatus.failure)),
        (r) => emit(
          state.copyWith(status: SearchStatus.success, searchEntity: r),
        ),
      );
    } catch (_) {}
  }
}
