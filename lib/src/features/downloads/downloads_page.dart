import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Library'),
        centerTitle: true,
      ),

      body: const LibraryOptions(),
    );
  }
}

class LibraryOptions extends StatelessWidget {
  const LibraryOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionGroup(
          title: 'Quick Access',
          items: [
            LibraryItem(
              icon: Icons.favorite,
              title: 'Favorites',
              onTap: () {
                // Handle tap
              },
            ),
            LibraryItem(
              icon: Icons.download,
              title: 'Downloads',
              onTap: () {
                // Handle tap
              },
            ),
            LibraryItem(
              icon: Icons.folder_copy_rounded,
              title: 'Local Musics',
              onTap: () {
                // Handle tap
              },
            ),
          ],
        ),
        const SizedBox(height: 24),
        SectionGroup(
          title: 'Playlists',
          items: [
            LibraryItem(
              icon: Icons.library_music,
              title: 'My Playlist',
              onTap: () {
                // Handle tap
              },
            ),
            LibraryItem(
              icon: Icons.playlist_add,
              title: 'Custom Playlist',
              onTap: () {
                // Handle tap
              },
            ),
          ],
        ),
      ],
    );
  }
}

class SectionGroup extends StatelessWidget {
  final String title;
  final List<LibraryItem> items;

  const SectionGroup({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...items.map(
          (item) => ListTile(
            leading: Icon(item.icon),
            title: Text(item.title),
            tileColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            onTap: item.onTap,
          ),
        ),
      ],
    );
  }
}

class LibraryItem {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  LibraryItem({
    required this.icon,
    required this.title,
    required this.onTap,
  });
}
