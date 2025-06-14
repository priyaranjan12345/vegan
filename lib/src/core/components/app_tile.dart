import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/app_image.dart';

class AppTile extends StatelessWidget {
  const AppTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.onTap,
    this.isSelected = false,
  });

  final String imageUrl;
  final String title;
  final String subTitle;
  final void Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: AppImage(
            width: 60,
            height: 60,
            fit: BoxFit.cover,
            imageUrl: imageUrl,
          ),
        ),
        title: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          subTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: isSelected ? const Icon(Icons.queue_music_rounded) : null,
      ),
    );
  }
}
