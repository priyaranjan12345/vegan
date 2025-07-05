part of 'browse_bloc.dart';

enum BrowseStatus { initial, success, failure }

final class BrowseState extends Equatable {
  const BrowseState({
    this.browseStatus = BrowseStatus.initial,
    this.moods = const [],
    this.browseCarousels = const [],
    this.continuationId = '',
    this.hasReachedMax = false,
  });

  final BrowseStatus browseStatus;
  final List<MoodEntity> moods;
  final List<Object> browseCarousels;
  final String continuationId;
  final bool hasReachedMax;

  @override
  List<Object?> get props => [
    browseStatus,
    moods,
    browseCarousels,
    continuationId,
    hasReachedMax,
  ];

  BrowseState copyWith({
    BrowseStatus? browseStatus,
    List<MoodEntity>? moods,
    List<Object>? browseCarousels,
    String? continuationId,
    bool? hasReachedMax,
  }) {
    return BrowseState(
      browseStatus: browseStatus ?? this.browseStatus,
      moods: moods ?? this.moods,
      browseCarousels: browseCarousels ?? this.browseCarousels,
      continuationId: continuationId ?? this.continuationId,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}
