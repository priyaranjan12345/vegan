part of 'browse_bloc.dart';

sealed class BrowseEvent extends Equatable {
  const BrowseEvent();
}

final class BrowseInitEvent extends BrowseEvent {
  const BrowseInitEvent();

  @override
  List<Object?> get props => [];
}

final class BrowseContinuationEvent extends BrowseEvent {
  const BrowseContinuationEvent({
    required this.continuationId,
  });

  final String continuationId;

  @override
  List<Object?> get props => [
    continuationId,
  ];
}