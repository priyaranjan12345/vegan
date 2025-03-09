import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/usecase/no_params.dart';
import '../../domain/entiry/coming_soon_entity.dart';
import '../../domain/usecase/coming_soon_usecase.dart';

part 'coming_soon_event.dart';
part 'coming_soon_state.dart';

class ComingSoonBloc extends Bloc<ComingSoonVideosEvent, ComingSoonState> {
  ComingSoonBloc({required ComingSoonUsecase comingSoonUsecase})
      : _comingSoonUsecase = comingSoonUsecase,
        super(const ComingSoonInitial()) {
    on<GetComingSoonVideosEvent>(getComingSoonVideos);
  }

  final ComingSoonUsecase _comingSoonUsecase;

  Future<void> getComingSoonVideos(
    GetComingSoonVideosEvent event,
    Emitter<ComingSoonState> emit,
  ) async {
    // emit(const ComingSoonLoading());
    final result = await _comingSoonUsecase(NoParams());
    result.fold(
      (l) => emit(const ComingSoonError()),
      (r) => emit(ComingSoonLoaded(comingSoonVideos: r)),
    );
  }

  /// implement pull to refresh
}
