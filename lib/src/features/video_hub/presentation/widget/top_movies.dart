import 'package:flutter/material.dart';

class TopMovies extends StatelessWidget {
  const TopMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 16,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        child: Stack(
          children: [
            Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.black.withOpacity(0.4),
                    Colors.black,
                  ],
                ),
              ),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  fit: BoxFit.cover,
                  'https://images.pexels.com/photos/1426044/pexels-photo-1426044.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                ),
              ),
            ),
            const Positioned(
              bottom: 8.0,
              left: 8.0,
              child: Column(
                children: [
                  Text(
                    'Vegan top 10 movies',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
