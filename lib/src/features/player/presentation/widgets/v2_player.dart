import 'package:flutter/material.dart';
import 'package:vegan/src/core/theme/app_colors.dart';

class TransitionAppBar extends StatelessWidget {
  final Widget avatar;
  final Widget title;

  const TransitionAppBar({
    required this.avatar,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _TransitionAppBarDelegate(
        avatar: avatar,
        title: title,
      ),
    );
  }
}

class _TransitionAppBarDelegate extends SliverPersistentHeaderDelegate {
  final _avatarTween = SizeTween(
    begin: Size(150.0, 150.0),
    end: Size(50.0, 50.0),
  );
  final _avatarMarginTween = EdgeInsetsTween(
    begin: EdgeInsets.zero,
    end: EdgeInsets.only(left: 10.0),
  );
  final _avatarAlignTween = AlignmentTween(
    begin: Alignment.topCenter,
    end: Alignment.centerLeft,
  );

  final _titleMarginTween = EdgeInsetsTween(
    begin: EdgeInsets.only(top: 150.0 + 5.0),
    end: EdgeInsets.only(left: 10.0 + 50.0 + 5.0),
  );
  final _titleAlignTween = AlignmentTween(
    begin: Alignment.center,
    end: Alignment.centerLeft,
  );

  final Widget avatar;
  final Widget title;

  _TransitionAppBarDelegate({
    required this.avatar,
    required this.title,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final progress = shrinkOffset / 200.0;

    final avatarSize = _avatarTween.lerp(progress);
    final avatarMargin = _avatarMarginTween.lerp(progress);
    final avatarAlign = _avatarAlignTween.lerp(progress);

    final titleMargin = _titleMarginTween.lerp(progress);
    final titleAlign = _titleAlignTween.lerp(progress);
    return Container(
      color: AppColors.dark,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Padding(
            padding: avatarMargin,
            child: Align(
              alignment: avatarAlign,
              child: SizedBox.fromSize(size: avatarSize, child: avatar),
            ),
          ),
          Padding(
            padding: titleMargin,
            child: Align(
              alignment: titleAlign,
              child: DefaultTextStyle(
                style: Theme.of(context).textTheme.labelMedium!,
                child: title,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 200.0;

  @override
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(_TransitionAppBarDelegate oldDelegate) {
    return avatar != oldDelegate.avatar || title != oldDelegate.title;
  }
}

class V2Player extends StatelessWidget {
  const V2Player({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            TransitionAppBar(
              avatar: Material(
                color: Colors.blue,
                elevation: 3.0,
              ),
              title: const Text(
                'Hello World  /AidlConversion(23331): aidl2legacy_AudioChannelLayout_audio_channel_mask_t: no legacy output audio_channel_mask_t found for AudioChannelLayout{layoutMask: 16}',
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return ListTile(
                  title: Text('$index'),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
