part of 'coming_soon_bloc.dart';

sealed class ComingSoonState extends Equatable {
  const ComingSoonState();
}

final class ComingSoonInitial extends ComingSoonState {
  const ComingSoonInitial() : super();

  @override
  List<Object> get props => [];
}

final class ComingSoonLoading extends ComingSoonState {
  const ComingSoonLoading() : super();

  @override
  List<Object> get props => [];
}

final class ComingSoonLoaded extends ComingSoonState {
  const ComingSoonLoaded({
    required this.comingSoonVideos,
  }) : super();

  final List<ComingSoonEntity> comingSoonVideos;

  @override
  List<Object> get props => [];
}

final class ComingSoonError extends ComingSoonState {
  const ComingSoonError() : super();

  @override
  List<Object> get props => [];
}
