import 'package:flutter/material.dart';

class VeganAppBar extends StatelessWidget {
  const VeganAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.black,
      child: const SizedBox(
        height: kToolbarHeight,
        child: IntrinsicHeight(
          child: SafeArea(
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
}
