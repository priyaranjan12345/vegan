import 'package:flutter/material.dart';

import '../../domain/entity/moods_entity.dart';

class MoodsChips extends StatelessWidget {
  const MoodsChips({
    super.key,
    required this.moods,
    this.onSelectMoods,
  });

  final List<MoodsEntity> moods;
  final void Function(String params)? onSelectMoods;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: moods.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(12.0),
        itemBuilder: (context, index) {
          final mood = moods[index];
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: () => onSelectMoods?.call(mood.params),
              child: Chip(
                label: Text(mood.label),
              ),
            ),
          );
        },
      ),
    );
  }
}
