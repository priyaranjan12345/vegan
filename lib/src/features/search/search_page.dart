import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

import 'widgets/widgets.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkGray,
          title: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search for a show, movie, genre, e.t.c.',
              filled: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          actions: [
            CircleAvatar(
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mic),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8.0,
              ),
              child: Text(
                'TOP SEARCH RESULTS',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ...List.generate(
              6,
              (index) => const SearchResultCard(),
            ),
          ],
        ),
      ),
    );
  }
}
