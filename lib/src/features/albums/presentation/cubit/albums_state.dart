part of 'albums_cubit.dart';

sealed class AlbumsState extends Equatable {
  const AlbumsState();
}

final class AlbumsInitial extends AlbumsState {
  const AlbumsInitial();

  @override
  List<Object> get props => [];
}

final class AlbumsLoading extends AlbumsState {
  const AlbumsLoading();

  @override
  List<Object> get props => [];
}

final class AlbumsLoaded extends AlbumsState {
  const AlbumsLoaded({
    required this.albumsEntity,
  });

  final AlbumsEntity albumsEntity;

  @override
  List<Object> get props => [
    albumsEntity,
  ];
}

final class AlbumError extends AlbumsState {
  const AlbumError();

  @override
  List<Object> get props => [];
}
