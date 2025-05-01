import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/app_image.dart';

class AppTile extends StatelessWidget {
  const AppTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.onTap,
  });

  final String imageUrl;
  final String title;
  final String subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
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
        onTap: onTap,
      ),
    );
  }
}
