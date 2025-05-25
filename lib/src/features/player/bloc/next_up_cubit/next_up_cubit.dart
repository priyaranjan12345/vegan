import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../video_hub/domain/entity/entity.dart';
import '../../domain/usecase/next_up_usecase.dart';

part 'next_up_state.dart';

class NextUpCubit extends Cubit<NextUpState> {
  NextUpCubit({
    required NextUpUsecase nextUpUsecase,
  }) : _nextUpUsecase = nextUpUsecase,
       super(const NextUpInitial());

  final NextUpUsecase _nextUpUsecase;

  Future<void> fetchNextUp({
    required String videoId,
    required String playlistId,
  }) async {
    emit(const NextUpLoading());

    try {
      final result = await _nextUpUsecase(
        NextUpParams(
          videoId: videoId,
          playlistId: playlistId,
        ),
      );

      result.fold(
        (error) {
          emit(
            const NextUpError(message: 'unable to load next up'),
          );
        },
        (nextUp) {
          emit(NextUpLoaded(videos: nextUp));
        },
      );
    } catch (e) {
      emit(
        NextUpError(message: e.toString()),
      );
    }
  }
}
