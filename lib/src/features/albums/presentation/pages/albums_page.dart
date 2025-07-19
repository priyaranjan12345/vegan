import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
    final List<Map<String, String>> songs = List.generate(
      10,
      (index) => {
        'title': 'Song Title ${index + 1}',
        'artist': 'Artist Name',
        'thumbnail':
            'https://lh3.googleusercontent.com/d1iLYZoIsHYay5gj49JQPCcPenWHthcrADwPa8g_dz98V05_jU5pRBrrkP_7F16qnyYjKCty7JS8RrNY=w544-h544-l90-rj',
      },
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.white),
        title: const Text('Playlist', style: TextStyle(color: Colors.white)),
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
                    'https://lh3.googleusercontent.com/d1iLYZoIsHYay5gj49JQPCcPenWHthcrADwPa8g_dz98V05_jU5pRBrrkP_7F16qnyYjKCty7JS8RrNY=w544-h544-l90-rj',
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chill Vibes',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '20 songs • 1 hr 30 min',
                        style: TextStyle(color: Colors.grey),
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
          Expanded(
            child: ListView.separated(
              itemCount: songs.length,
              separatorBuilder: (_, __) => const Divider(color: Colors.white10),
              itemBuilder: (context, index) {
                final song = songs[index];
                return ListTile(
                  leading: Image.network(
                    song['thumbnail']!,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(
                    song['title']!,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    song['artist']!,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  trailing: const Icon(
                    Icons.more_vert,
                    color: Colors.white54,
                  ),
                  onTap: () {},
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
