import 'package:flutter/material.dart';

import 'app_image.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.onTap,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;
  final String imageUrl;
  final String title;
  final String subTitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(),
      color: Colors.transparent,
      elevation: 0,
      child: SizedBox(
        height: height,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: AspectRatio(
                aspectRatio: 1.1,
                child: AppImage(
                  fit: BoxFit.cover,
                  imageUrl: imageUrl,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  height: 1,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                subTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
