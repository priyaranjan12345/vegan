import 'package:flutter/material.dart';

class MoodsChips extends StatelessWidget {
  const MoodsChips({super.key, required this.moods});

  final List<String> moods;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemCount: moods.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Chip(
          label: Text(moods[index]),
        ),
      ),
    );
  }
}
