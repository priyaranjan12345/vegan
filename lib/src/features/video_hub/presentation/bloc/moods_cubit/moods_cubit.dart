import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/core/usecase/no_params.dart';

import '../../../domain/entity/entity.dart';
import '../../../domain/usecase/usecase.dart';

part 'moods_state.dart';

class MoodsCubit extends Cubit<MoodsState> {
  MoodsCubit({
    required MoodsUsecase moodsUsecase,
  })  : _moodsUsecase = moodsUsecase,
        super(const MoodsInitialState());

  final MoodsUsecase _moodsUsecase;

  Future<void> getMoods() async {
    emit(const MoodsLoadingState());
    try {
      final result = await _moodsUsecase(NoParams());
      result.fold(
        (l) => emit(
          const MoodsErrorState(message: 'Error on loading moods'),
        ),
        (r) => emit(MoodsLoadedState(moods: r)),
      );
    } catch (e) {
      emit(MoodsErrorState(message: e.toString()));
    }
  }
}
