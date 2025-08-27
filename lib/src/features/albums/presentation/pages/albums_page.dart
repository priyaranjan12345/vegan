import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/entity/albums_entity.dart';

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
      body: Column(
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
          const Expanded(
            child: AlbumsMusicItems(musics: []),
          ),
        ],
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
      separatorBuilder: (_, __) => const Divider(color: Colors.white10),
      itemBuilder: (context, index) {
        final music = musics[index];
        return ListTile(
          leading: Image.network(
            music.thumbnail,
            width: 50,
            height: 50,
          ),
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
          onTap: () {},
        );
      },
    );
  }
}
