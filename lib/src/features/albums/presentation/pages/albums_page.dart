import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/app/app.dart';
import 'package:vegan/src/features/video_hub/domain/entity/video_entity.dart';

import '../../../player/presentation/bloc/yt_player_bloc/yt_player_bloc.dart';
import '../../domain/entity/albums_entity.dart';
import '../cubit/albums_cubit.dart';

@RoutePage()
class AlbumsPage extends StatelessWidget {
  const AlbumsPage({
    super.key,
    required this.browseId,
    required this.thumbnail,
    required this.title,
    required this.subtitle,
  });

  final String thumbnail;
  final String title;
  final String subtitle;
  final String browseId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.white),
        title: const Text('Albums', style: TextStyle(color: Colors.white)),
        actions: const [Icon(Icons.more_vert, color: Colors.white)],
      ),
      body: BlocProvider(
        create: (_) => injector<AlbumsCubit>()..loadAlbumContent(browseId),
        child: Column(
          children: [
            // Playlist Info
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      thumbnail,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          subtitle,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Play/Shuffle Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Play'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 12),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.shuffle),
                    label: const Text('Shuffle'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white24),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // Song List
            BlocBuilder<AlbumsCubit, AlbumsState>(
              builder: (context, state) {
                return switch (state) {
                  AlbumsInitial() || AlbumsLoading() => const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(
                      child: RepaintBoundary(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                  AlbumsLoaded() => Expanded(
                    child: AlbumsMusicItems(
                      musics: state.albumsEntity.musicItems,
                    ),
                  ),
                  AlbumError() => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const Text('Something went wrong, Please try again.'),
                        ElevatedButton(
                          child: const Text('Try Again'),
                          onPressed: () {
                            context.read<AlbumsCubit>().loadAlbumContent(
                              browseId,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                };
              },
            ),
          ],
        ),
      ),
    );
  }
}

class AlbumsMusicItems extends StatelessWidget {
  const AlbumsMusicItems({super.key, required this.musics});

  final List<MusicItemEntity> musics;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: musics.length,
      separatorBuilder: (_, _) => const Divider(color: Colors.white10),
      itemBuilder: (context, index) {
        final music = musics[index];
        return ListTile(
          leading: music.thumbnail.isNotEmpty
              ? Image.network(
                  music.thumbnail,
                  width: 50,
                  height: 50,
                )
              : const Icon(Icons.music_note_rounded),
          title: Text(
            music.title,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            music.subtitle,
            style: const TextStyle(color: Colors.grey),
          ),
          trailing: const Icon(
            Icons.more_vert,
            color: Colors.white54,
          ),
          onTap: () {
            injector<YtPlayerBloc>().add(
              LoadMusic(
                music.videoId,
                playlist: musics.map(
                  (e) => VideoEntity(
                    id: e.videoId,
                    title: e.title,
                    description: e.subtitle,
                    videoUrl: '',
                    thumbnail: e.thumbnail,
                  ),
                ).toList(),
              ),
            );
          },
        );
      },
    );
  }
}
