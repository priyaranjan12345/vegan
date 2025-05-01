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
      child: SizedBox(
        height: height,
        width: width,
        child: Column(
          spacing: 8,
          children: [
            AppImage(
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              imageUrl: imageUrl,
            ),
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              subTitle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
