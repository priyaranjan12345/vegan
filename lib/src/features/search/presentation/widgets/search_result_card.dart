import 'package:flutter/material.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.onPressed,
  });

  final String title;
  final String subtitle;
  final String imageUrl;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.darkGray,
      shape: const RoundedRectangleBorder(),
      child: SizedBox(
        height: 76.0,
        child: Row(
          children: [
            Flexible(
              flex: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  fit: BoxFit.cover,
                  width: double.infinity,
                  imageUrl,
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0,),
                child: Column(
                  spacing: 8.0,
                  children: [
                    Text(title, maxLines: 1,),
                    Text(
                      subtitle,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
