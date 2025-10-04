import 'package:flutter/material.dart';
import 'package:flutter_sliding_up_panel/flutter_sliding_up_panel.dart';

import '../../../../core/theme/app_colors.dart';

class YTMusicPlayerPage extends StatefulWidget {
  const YTMusicPlayerPage({super.key});

  @override
  State<YTMusicPlayerPage> createState() => _YTMusicPlayerPageState();
}

class _YTMusicPlayerPageState extends State<YTMusicPlayerPage> {
  final panelController = SlidingUpPanelController();
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        panelController.expand();
      } else if (scrollController.offset <=
              scrollController.position.minScrollExtent &&
          !scrollController.position.outOfRange) {
        panelController.anchor();
      } else {}
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    panelController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Now Playing',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 16),

                /// Album Art
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.sizeOf(context).height * 0.3,
                  ),
                  child: Card(
                    color: Colors.amber,
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          'https://lh3.googleusercontent.com/u_YlAOSU7_M6mI6_4Xo0KIIwI_9pVCnLg0BrdLQsW-KENvVuvnvsq-cHhFrCiD9Ft48jqirgp_gWWwg=w226-h226-p-l90-rj',
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                /// Song Title + Artist
                const Text(
                  'Blinding Lights',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 6),
                Text(
                  'The Weeknd',
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.7),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 24),

                /// Progress Bar
                Slider(
                  value: 40,
                  min: 0,
                  max: 100,
                  activeColor: Colors.redAccent,
                  inactiveColor: Colors.grey.shade700,
                  onChanged: (value) {},
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('1:20', style: TextStyle(color: Colors.white70)),
                    Text('3:50', style: TextStyle(color: Colors.white70)),
                  ],
                ),
                const SizedBox(height: 16),

                /// Playback Controls
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.shuffle, color: Colors.white70),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      icon: const Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                        size: 36,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 36,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      icon: const Icon(
                        Icons.skip_next,
                        color: Colors.white,
                        size: 36,
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 16),
                    IconButton(
                      icon: const Icon(Icons.repeat, color: Colors.white70),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Material(
                  color: AppColors.darkGray,
                  borderRadius: BorderRadius.circular(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.volume_up_sharp,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // bottom sheet
          // Positioned(
          //   child: DraggableScrollableSheet(
          //     maxChildSize: 1,
          //     minChildSize: 0.2,
          //     builder: (context, scrollController) {
          //       return Material(
          //         color: AppColors.darcular,
          //         borderRadius: const BorderRadius.vertical(
          //           top: Radius.circular(16.0),
          //         ),
          //         child: Column(
          //           children: [
          //             Expanded(
          //               child: ListView.builder(
          //                 shrinkWrap: true,
          //                 padding: EdgeInsets.zero,

          //                 controller: scrollController,
          //                 itemCount: 20,
          //                 itemBuilder: (context, index) => ListTile(
          //                   title: Text('data - $index'),
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //       );
          //     },
          //   ),
          // ),
          SlidingUpPanelWidget(
            controlHeight: 60.0,
            enableOnTap: true,
            upperBound: 1.0,
            panelController: panelController,
            onTap: () {
              if (SlidingUpPanelStatus.expanded == panelController.status) {
                panelController.collapse();
              } else {
                panelController.expand();
              }
            },
            child: PanelChild(
              scrollController: scrollController,
            ),
          ),
        ],
      ),
    );
  }
}

class DraggableScrollable extends StatefulWidget {
  const DraggableScrollable({
    super.key,
  });

  @override
  State<DraggableScrollable> createState() => _DraggableScrollableState();
}

class _DraggableScrollableState extends State<DraggableScrollable> {
  double sizeOfCard = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            bottom: MediaQuery.of(context).size.height * 0.3,
            child: Image.network(
              'https://www.ionos.com/digitalguide/fileadmin/DigitalGuide/Screenshots_2023/google-my-maps.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: NotificationListener<DraggableScrollableNotification>(
              onNotification: ((notification) {
                setState(() {
                  sizeOfCard = 2 * notification.extent - 0.8;
                });
                return true;
              }),
              child: DraggableScrollableSheet(
                maxChildSize: 0.9,
                minChildSize: 0.38,
                builder: (context, controller) {
                  return Material(
                    elevation: 15,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: ListView(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        children: [
                          Center(
                            child: Container(
                              height: 3,
                              width: 50,
                              color: Colors.black45,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text('Are you ready to start your journey'),
                          const Text(
                            'Where are you going?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          const SizedBox(height: 20),
                          const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                              hintText: 'Search your destination',
                            ),
                          ),
                          const SizedBox(height: 5),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: 15,
                              controller: controller,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  leading: const Icon(
                                    Icons.location_on_outlined,
                                    size: 30,
                                  ),
                                  title: Text(
                                    'Address : $index',
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  subtitle: Text('City $index'),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -160 * (1 - sizeOfCard),
            child: Opacity(
              opacity: sizeOfCard.clamp(0.0, 1.0),
              child: Material(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Choose Your Destination',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: 'What your name',
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: 'Where are you going',
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// panel child
class PanelChild extends StatelessWidget {
  const PanelChild({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: const ShapeDecoration(
        color: AppColors.black,
        shadows: [
          BoxShadow(
            blurRadius: 5.0,
            spreadRadius: 2.0,
            color: Color(0x11000000),
          ),
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            height: 60.0,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.queue_play_next_rounded,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.0,
                  ),
                ),
                Text(
                  'Next Up',
                ),
              ],
            ),
          ),
          Divider(
            height: 0.5,
            color: Colors.grey[300],
          ),
          Flexible(
            child: Container(
              color: AppColors.darcular,
              child: ListView.separated(
                controller: scrollController,
                physics: const ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('list item $index'),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 0.5,
                  );
                },
                shrinkWrap: true,
                itemCount: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
