part of 'next_up_cubit.dart';

sealed class NextUpState extends Equatable {
  const NextUpState();
}

final class NextUpInitialState extends NextUpState {
  const NextUpInitialState();

  @override
  List<Object?> get props => [];
}

final class NextUpLoadingState extends NextUpState {
  const NextUpLoadingState();

  @override
  List<Object?> get props => [];
}

final class NextUpLoadedState extends NextUpState {
  const NextUpLoadedState({required this.nextUp});

  final List<Object> nextUp;

  @override
  List<Object?> get props => [nextUp];
}

final class NextUpErrorState extends NextUpState {
  const NextUpErrorState(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}
