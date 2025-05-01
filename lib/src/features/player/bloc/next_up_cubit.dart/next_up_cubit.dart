import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'next_up_state.dart';

class NextUpCubit extends Cubit<NextUpState> {
  NextUpCubit() : super(const NextUpInitialState());

  Future<void> loadNextUp(String id) async {
    emit(const NextUpLoadingState());
    try {
      emit(const NextUpLoadedState(nextUp: []));
    } catch (e) {
      emit(NextUpErrorState(e.toString()));
    }
  }
}
