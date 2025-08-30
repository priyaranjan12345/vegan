import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/router/app_router.gr.dart';
import '../../core/theme/app_colors.dart';
import '../internet_checker/presentation/pages/internet_checker_page.dart';
import '../player/view/player_view.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InternetCheckerPage(
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) async {
          if (didPop) {
            return;
          }
          final bool shouldPop = await _showBackDialog(context) ?? false;
          if (context.mounted && shouldPop) {
            Navigator.pop(context);
            exit(0);
          }
        },
        child: AutoTabsScaffold(
          routes: const [
            HomeTab(),
            SearchTab(),
            ComingSoonTab(),
            DownloadsTab(),
            MoreTab(),
          ],
          bottomNavigationBuilder: (_, tabsRouter) {
            return BottomNavigationBar(
              currentIndex: tabsRouter.activeIndex,
              onTap: tabsRouter.setActiveIndex,
              type: BottomNavigationBarType.fixed,
              iconSize: 12.0,
              selectedLabelStyle: const TextStyle(
                fontSize: 12.0,
              ),
              items: const [
                BottomNavigationBarItem(
                  label: 'Browse',
                  icon: Icon(Icons.home_outlined, color: AppColors.grey),
                  activeIcon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'Search',
                  icon: Icon(
                    Icons.manage_search_rounded,
                    color: AppColors.grey,
                  ),
                  activeIcon: Icon(Icons.manage_search_rounded),
                ),
                BottomNavigationBarItem(
                  label: 'Explore',
                  icon: Icon(Icons.perm_media_sharp),
                ),
                BottomNavigationBarItem(
                  label: 'Library',
                  icon: Icon(Icons.download_rounded),
                ),
                BottomNavigationBarItem(
                  label: 'Settings',
                  icon: Icon(Icons.menu),
                ),
              ],
            );
          },
          bottomSheet: const PlayerView(),
        ),
      ),
    );
  }

  /// Shows a dialog and resolves to true when the user has indicated that they
  /// want to pop.
  ///
  /// A return value of null indicates a desire not to pop, such as when the
  /// user has dismissed the modal without tapping a button.
  Future<bool?> _showBackDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('Are you sure you want to exit the app.'),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context, false),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Exit'),
              onPressed: () => Navigator.pop(context, true),
            ),
          ],
        );
      },
    );
  }
}
