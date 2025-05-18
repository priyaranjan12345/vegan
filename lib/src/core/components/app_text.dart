import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.child,
    required this.text,
    this.maxLines,
    this.overflow,
    this.textAlign,
  });

  final String text;
  final Widget child;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;

  AppText.heading({
    super.key,
    required this.text,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : child = Text(
          text,
          maxLines: maxLines,
          overflow: overflow,
          textAlign: textAlign,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            height: 1,
          ),
        );

  AppText.smallText({
    super.key,
    required this.text,
    this.maxLines,
    this.overflow,
    this.textAlign,
  }) : child = Text(
          text,
          maxLines: maxLines,
          overflow: overflow,
          textAlign: textAlign,
          style: const TextStyle(),
        );

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
