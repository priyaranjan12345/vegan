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
                icon: Icon(Icons.manage_search_rounded, color: AppColors.grey),
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
    );
  }
}
