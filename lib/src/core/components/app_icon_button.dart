import 'package:flutter/cupertino.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.label,
    this.axis = Axis.vertical,
    this.onPressed,
  });

  final IconData icon;
  final String label;
  final Axis axis;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: GestureDetector(
        child: Flex(
          direction: axis,
          children: [
            Icon(icon, size: 30),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
