import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vegan/src/core/router/app_router.gr.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeTab(),
        SearchTab(),
        // SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home, color: AppColors.grey),
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search, color: AppColors.grey),
              activeIcon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Coming Soon',
              icon: Icon(Icons.perm_media_sharp),
            ),
            BottomNavigationBarItem(
              label: 'Downloads',
              icon: Icon(Icons.download_rounded),
            ),
            BottomNavigationBarItem(
              label: 'More',
              icon: Icon(Icons.menu),
            ),
          ],
        );
      },
    );
  }
}
