// import 'package:flutter/material.dart';
// import 'package:media_kit/media_kit.dart';

// /// Displays the play/buffering status of the player controlled by [controller].
// ///
// /// If [allowScrubbing] is true, this widget will detect taps and drags and
// /// seek the player accordingly.
// ///
// /// [padding] allows to specify some extra padding around the progress indicator
// /// that will also detect the gestures.
// class PlayerProgressIndicator extends StatefulWidget {
//   /// Construct an instance that displays the play/buffering status of the player
//   /// controlled by [controller].
//   ///
//   /// Defaults will be used for everything except [controller] if they're not
//   /// provided. [allowScrubbing] defaults to false, and [padding] will default
//   /// to `top: 5.0`.
//   const PlayerProgressIndicator(
//     this.player, {
//     super.key,
//     this.colors = const PlayerProgressColors(),
//     required this.allowScrubbing,
//     this.padding = EdgeInsets.zero,
//   });

//   final Player player;

//   /// The default colors used throughout the indicator.
//   ///
//   /// See [PlayerProgressColors] for default values.
//   final PlayerProgressColors colors;

//   /// When true, the widget will detect touch input and try to seek the player
//   /// accordingly. The widget ignores such input when false.
//   ///
//   /// Defaults to false.
//   final bool allowScrubbing;

//   /// This allows for visual padding around the progress indicator that can
//   /// still detect gestures via [allowScrubbing].
//   ///
//   /// Defaults to `top: 5.0`.
//   final EdgeInsets padding;

//   @override
//   State<PlayerProgressIndicator> createState() =>
//       _PlayerProgressIndicatorState();
// }

// class _PlayerProgressIndicatorState extends State<PlayerProgressIndicator> {
//   _PlayerProgressIndicatorState() {
//     listener = () {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     };
//   }

//   late VoidCallback listener;
//   Player get player => widget.player;
//   PlayerStream get playerStream => widget.player.stream;
//   PlayerProgressColors get colors => widget.colors;

//   @override
//   Widget build(BuildContext context) {
//     Widget progressIndicator;
//     if (!player.state.completed) {
//       progressIndicator = Stack(
//         fit: StackFit.passthrough,
//         children: <Widget>[
//           StreamBuilder(
//               stream: player.stream.buffer,
//               builder: (context, snapshot) {
//                 final durationInMilSec = player.state.duration.inMilliseconds;
//                 final duration = durationInMilSec > 0 ? durationInMilSec : 1;
//                 final buffer = snapshot.data?.inMilliseconds ?? 0;
//                 final bufferValue = buffer / duration;

//                 return LinearProgressIndicator(
//                   value: bufferValue,
//                   valueColor:
//                       AlwaysStoppedAnimation<Color>(colors.bufferedColor),
//                   backgroundColor: colors.backgroundColor,
//                 );
//               }),
//           StreamBuilder(
//               stream: player.stream.position,
//               builder: (context, snapshot) {
//                 final durationInMilSec = player.state.duration.inMilliseconds;
//                 final duration = durationInMilSec > 0 ? durationInMilSec : 1;
//                 final position = snapshot.data?.inMilliseconds ?? 0;
//                 final progressValue = position / duration;

//                 return LinearProgressIndicator(
//                   value: progressValue,
//                   valueColor: AlwaysStoppedAnimation<Color>(colors.playedColor),
//                   backgroundColor: Colors.transparent,
//                 );
//               }),
//         ],
//       );
//     } else {
//       progressIndicator = LinearProgressIndicator(
//         valueColor: AlwaysStoppedAnimation<Color>(colors.playedColor),
//         backgroundColor: colors.backgroundColor,
//       );
//     }
//     final Widget paddedProgressIndicator = Padding(
//       padding: widget.padding,
//       child: progressIndicator,
//     );
//     if (widget.allowScrubbing) {
//       return PlayerScrubber(
//         player: player,
//         child: paddedProgressIndicator,
//       );
//     } else {
//       return paddedProgressIndicator;
//     }
//   }
// }

// /// A scrubber to control [Player]s
// class PlayerScrubber extends StatefulWidget {
//   /// Create a [PlayerScrubber] handler with the given [child].
//   ///
//   /// [controller] is the [Player] that will be controlled by
//   /// this scrubber.
//   const PlayerScrubber({
//     super.key,
//     required this.child,
//     required this.player,
//   });

//   /// The widget that will be displayed inside the gesture detector.
//   final Widget child;

//   /// The [Player] that will be controlled by this scrubber.
//   final Player player;

//   @override
//   State<PlayerScrubber> createState() => _PlayerScrubberState();
// }

// class _PlayerScrubberState extends State<PlayerScrubber> {
//   bool _controllerWasPlaying = false;

//   Player get player => widget.player;

//   @override
//   Widget build(BuildContext context) {
//     void seekToRelativePosition(Offset globalPosition) {
//       final RenderBox box = context.findRenderObject()! as RenderBox;
//       final Offset tapPos = box.globalToLocal(globalPosition);
//       final double relative = tapPos.dx / box.size.width;
//       final Duration position = player.state.duration * relative;
//       player.seek(position);
//     }

//     return GestureDetector(
//       behavior: HitTestBehavior.opaque,
//       child: widget.child,
//       onHorizontalDragStart: (DragStartDetails details) {
//         _controllerWasPlaying = player.state.playing;
//         if (_controllerWasPlaying) {
//           player.pause();
//         }
//       },
//       onHorizontalDragUpdate: (DragUpdateDetails details) {
//         seekToRelativePosition(details.globalPosition);
//       },
//       onHorizontalDragEnd: (DragEndDetails details) {
//         if (_controllerWasPlaying &&
//             player.state.position != player.state.duration) {
//           player.play();
//         }
//       },
//       onTapDown: (TapDownDetails details) {
//         seekToRelativePosition(details.globalPosition);
//       },
//     );
//   }
// }

// /// Used to configure the [PlayerProgressIndicator] widget's colors for how it
// /// describes the player's status.
// ///
// /// The widget uses default colors that are customizable through this class.
// class PlayerProgressColors {
//   /// Any property can be set to any color. They each have defaults.
//   ///
//   /// [playedColor] defaults to red at 70% opacity. This fills up a portion of
//   /// the [PlayerProgressIndicator] to represent how much of the player has played
//   /// so far.
//   ///
//   /// [bufferedColor] defaults to blue at 20% opacity. This fills up a portion
//   /// of [PlayerProgressIndicator] to represent how much of the player has
//   /// buffered so far.
//   ///
//   /// [backgroundColor] defaults to gray at 50% opacity. This is the background
//   /// color behind both [playedColor] and [bufferedColor] to denote the total
//   /// size of the player compared to either of those values.
//   const PlayerProgressColors({
//     this.playedColor = const Color.fromRGBO(255, 0, 0, 0.7),
//     this.bufferedColor = const Color.fromRGBO(50, 50, 200, 0.2),
//     this.backgroundColor = const Color.fromRGBO(200, 200, 200, 0.5),
//   });

//   /// [playedColor] defaults to red at 70% opacity. This fills up a portion of
//   /// the [PlayerProgressIndicator] to represent how much of the player has played
//   /// so far.
//   final Color playedColor;

//   /// [bufferedColor] defaults to blue at 20% opacity. This fills up a portion
//   /// of [PlayerProgressIndicator] to represent how much of the player has
//   /// buffered so far.
//   final Color bufferedColor;

//   /// [backgroundColor] defaults to gray at 50% opacity. This is the background
//   /// color behind both [playedColor] and [bufferedColor] to denote the total
//   /// size of the player compared to either of those values.
//   final Color backgroundColor;
// }
