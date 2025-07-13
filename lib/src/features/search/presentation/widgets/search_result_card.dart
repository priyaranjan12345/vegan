import 'package:flutter/material.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({super.key});

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
              child: Image.asset(
                fit: BoxFit.cover,
                width: double.infinity,
                'assets/logo/banner.png',
              ),
            ),
            const Flexible(
              flex: 6,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text('Citation'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
