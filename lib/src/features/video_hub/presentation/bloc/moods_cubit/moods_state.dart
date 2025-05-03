part of 'moods_cubit.dart';

sealed class MoodsState extends Equatable {
  const MoodsState();
}

final class MoodsInitialState extends MoodsState {
  const MoodsInitialState();

  @override
  List<Object?> get props => [];
}

final class MoodsLoadingState extends MoodsState {
  const MoodsLoadingState();

  @override
  List<Object?> get props => [];
}

final class MoodsLoadedState extends MoodsState {
  const MoodsLoadedState({required this.moods});

  final List<MoodsEntity> moods;

  @override
  List<Object?> get props => [moods];
}

final class MoodsErrorState extends MoodsState {
  const MoodsErrorState({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];
}
