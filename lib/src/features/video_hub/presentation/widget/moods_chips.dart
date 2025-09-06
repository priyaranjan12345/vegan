import 'package:flutter/material.dart';

import '../../domain/entity/moods_entity.dart';

class MoodsChips extends StatelessWidget {
  const MoodsChips({
    super.key,
    required this.moods,
    this.onSelectMoods,
    this.selectedParam,
  });

  final List<MoodEntity> moods;
  final void Function(String params)? onSelectMoods;
  final String? selectedParam;

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
          final isSelected = mood.params == selectedParam;

          Widget chip = Chip(
            label: Text(mood.label),
            backgroundColor: isSelected ? Theme.of(context).cardColor : null,
            shape: const StadiumBorder(),
            side: isSelected ? BorderSide.none : null,
          );

          if (isSelected) {
            chip = Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                  ],
                ),
              ),
              child: chip,
            );
          }

          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: () => onSelectMoods?.call(mood.params),
              child: chip,
            ),
          );
        },
      ),
    );
  }
}
