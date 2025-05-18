import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:vegan/src/features/player/view/player_view.dart';

@RoutePage()
class MaxPlayerPage extends StatelessWidget {
  const MaxPlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: PlayerView(
          isMaxPlayer: true,
        ),
      ),
    );
  }
}

class SafeAreaPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  SafeAreaPersistentHeaderDelegate({
    required this.child,
    required this.expandedHeight,
  });

  final Widget child;
  final double expandedHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SafeArea(
      bottom: false,
      child: SizedBox.expand(child: child),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SafeAreaPersistentHeaderDelegate old) {
    if (old.child != child) {
      return true;
    }
    return false;
  }
}

// SafeArea(
//       child: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 200,
//             leading: IconButton(
//               icon: const Icon(
//                 Icons.keyboard_arrow_down_rounded,
//                 size: 30,
//               ),
//               onPressed: () => onTap?.call(),
//             ),
//             flexibleSpace: FlexibleSpaceBar(
//               expandedTitleScale: 1,
//               centerTitle: true,
//               // title: SafeArea(
//               //   child: ListTile(
//               //     title: Text('Apna bana le'),
//               //     subtitle: Text('India songs box'),
//               //   ),
//               // ),
//               background: Container(
//                 foregroundDecoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.center,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Colors.white.withValues(alpha: 0.1),
//                       Colors.black.withValues(alpha: 0.4),
//                       Colors.black,
//                     ],
//                   ),
//                 ),
//                 child: const AppImage(
//                   imageUrl:
//                       'https://i.ytimg.com/vi/3rhPxDaagn8/sddefault.jpg?sqp=-oaymwEWCJADEOEBIAQqCghqEJQEGHgg6AJIWg&rs=AMzJL3nuckKygyuL7YLZOKWKWqLqLBrB-A',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             stretch: true,
//             pinned: true,
//             centerTitle: true,
//             floating: true,
//             snap: true,
//           ),
//           SliverPersistentHeader(
//             pinned: true,
//             delegate: SafeAreaPersistentHeaderDelegate(
//               expandedHeight: kToolbarHeight,
//               child: Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(8.0),
//                 margin: const EdgeInsets.symmetric(horizontal: 8.0),
//                 decoration: BoxDecoration(
//                   color: AppColors.darkGray,
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     CustomIconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.favorite_border),
//                     ),
//                     CustomIconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.skip_previous_rounded),
//                     ),
//                     CustomIconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.pause_rounded),
//                     ),
//                     CustomIconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.skip_next_rounded),
//                     ),
//                     CustomIconButton(
//                       onPressed: () {},
//                       icon: const Icon(Icons.download_outlined),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           const SliverToBoxAdapter(
//             child: Text('Next Up'),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (_, __) => const SearchResultCard(),
//               childCount: 20,
//             ),
//           ),
//         ],
//       ),
//     )
