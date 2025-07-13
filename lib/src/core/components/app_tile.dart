import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/app_image.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

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
      elevation: 0,
      color: AppColors.dark,
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1),
        ),
        dense: true,
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
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          subTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        trailing: isSelected ? const Icon(Icons.queue_music_rounded) : null,
      ),
    );
  }
}
