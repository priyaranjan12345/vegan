part of 'coming_soon_bloc.dart';

sealed class ComingSoonVideosEvent extends Equatable {
  const ComingSoonVideosEvent();

  @override
  List<Object> get props => [];
}

final class GetComingSoonVideosEvent extends ComingSoonVideosEvent {
  const GetComingSoonVideosEvent();

  @override
  List<Object> get props => [];
}
