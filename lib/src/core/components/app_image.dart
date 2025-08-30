import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/app_shimmer.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

class AppImage extends StatelessWidget {
  const AppImage({
    super.key,
    required this.imageUrl,
    this.fit,
    this.width,
    this.height,
  });

  final String imageUrl;
  final BoxFit? fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      imageUrl: imageUrl,
      fit: fit,
      placeholder: (_, _) => AppShimmer(
        child: Container(
          color: AppColors.grey,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
      errorWidget: (_, _, _) => const Icon(Icons.error),
    );
  }
}
