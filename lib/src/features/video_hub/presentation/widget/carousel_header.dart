import 'package:flutter/material.dart';

class CarouselHeader extends StatelessWidget {
  const CarouselHeader({
    super.key,
    required this.title,
    required this.onBackword,
    required this.onForward,
  });

  final String title;
  final VoidCallback onBackword;
  final VoidCallback onForward;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  child: IconButton(
                    onPressed: onBackword,
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 20,
                  child: IconButton(
                    onPressed: onForward,
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
