import 'package:cashei/views/widgets/utitlities.dart';
import 'package:cashei/views/widgets/video_player_iten.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideosByOtherUsers extends StatefulWidget {
  const VideosByOtherUsers({Key? key}) : super(key: key);

  @override
  _VideosByOtherUsersState createState() => _VideosByOtherUsersState();
}

class _VideosByOtherUsersState extends State<VideosByOtherUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: EdgeInsets.all(Get.height * 0.01),
            child: Align(
              alignment: Alignment.topLeft,
              child: backContainer(),
            ),
          ),
        ),
        Text(
          "Coin Bottle Challenge",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Get.height * 0.005, bottom: Get.height * 0.05),
          child: Text(
            "1.7M videos",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 1.0, mainAxisSpacing: 1.0),
            itemBuilder: (BuildContext context, int index) {
              return VideoPlayerItem(
                videoUrl: "assets/video/videoplayback.mp4",
                isChallenge: false,
              );
            },
          ),
        )
      ],
    )));
  }
}
