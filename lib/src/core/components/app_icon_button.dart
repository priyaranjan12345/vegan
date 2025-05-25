import 'package:flutter/material.dart';

// class AppIconButton extends StatelessWidget {
//   const AppIconButton({
//     super.key,
//     required this.icon,
//     required this.label,
//     this.axis = Axis.vertical,
//     this.onPressed,
//   });

//   final IconData icon;
//   final String label;
//   final Axis axis;
//   final void Function()? onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return Semantics(
//       button: true,
//       child: GestureDetector(
//         child: Flex(
//           direction: axis,
//           children: [
//             Icon(icon, size: 30),
//             Text(
//               label,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: icon,
        ),
      ),
    );
  }
}
