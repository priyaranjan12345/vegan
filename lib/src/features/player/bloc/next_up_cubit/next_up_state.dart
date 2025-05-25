part of 'next_up_cubit.dart';

sealed class NextUpState {
  const NextUpState();
}

final class NextUpInitial extends NextUpState {
  const NextUpInitial();
}

final class NextUpLoading extends NextUpState {
  const NextUpLoading();
}

final class NextUpLoaded extends NextUpState {
  final List<VideoEntity> videos;

  const NextUpLoaded({required this.videos});
}

final class NextUpError extends NextUpState {
  final String message;

  const NextUpError({required this.message});
}
