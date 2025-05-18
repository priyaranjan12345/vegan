import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegan/src/app/app.dart';
import 'package:vegan/src/core/router/app_router.gr.dart';
import 'package:vegan/src/core/theme/app_colors.dart';
import 'package:vegan/src/features/internet_checker/presentation/pages/internet_checker_page.dart';
import 'package:vegan/src/features/player/view/player_view.dart';

import '../player/bloc/video_details_cubit/video_details_cubit.dart';
import '../player/bloc/yt_player_bloc/yt_player_bloc.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InternetCheckerPage(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<YtPlayerBloc>(
            create: (_) => injector<YtPlayerBloc>(),
          ),
          BlocProvider<VideoDetailsCubit>(
            create: (_) => injector<VideoDetailsCubit>(),
          ),
        ],
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
          bottomSheet: const PlayerView(),
        ),
      ),
    );
  }
}
