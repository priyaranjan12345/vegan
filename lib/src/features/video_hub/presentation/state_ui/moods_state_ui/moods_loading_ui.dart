import 'package:flutter/material.dart';
import 'package:vegan/src/core/components/components.dart';

import '../../../../../core/theme/app_colors.dart';

class MoodsLoadingUi extends StatelessWidget {
  const MoodsLoadingUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppShimmer(
              child: Chip(
                label: Container(
                  height: 10,
                  width: 20,
                  color: AppColors.midGray,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
