import 'package:flutter/material.dart';

class VeganAppBar extends StatelessWidget implements PreferredSize {
  const VeganAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.black,
      child: const SafeArea(
        child: SizedBox(
          height: kToolbarHeight,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Vegan Video Player',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  @override
  Widget get child => const VeganAppBar();
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
