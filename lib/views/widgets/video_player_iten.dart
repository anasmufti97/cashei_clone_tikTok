import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

late VideoPlayerController videoPlayerController;

class VideoPlayerItem extends StatefulWidget {
  final String videoUrl;
  final bool isChallenge;

  // final VideoPlayerController state;
  const VideoPlayerItem({
    Key? key,
    required this.videoUrl,
    required this.isChallenge,
    // required this.state,
  }) : super(key: key);

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((value) {
        if (widget.isChallenge) {
          setState(() {});
        } else {
          videoPlayerController.play();
          videoPlayerController.setVolume(1);
        }
      });
  }

  // @override
  // void dispose() {
  //   videoPlayerController.dispose();
  //   super.dispose();
  //
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: VideoPlayer(videoPlayerController),
    );
  }
}
