import 'package:cashei/views/screens/home_screen.dart';
import 'package:cashei/views/screens/video_screen.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:cashei/views/widgets/video_player_iten.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../widgets/mtext_widget.dart';
import 'setting_screen.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => HomeScreen());
                },
                child: Padding(
                  padding: EdgeInsets.all(Get.height * 0.01),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: backContainer(),
                  ),
                ),
              ),
              MText(
                text: "Jacob West",
                colors: Color(0xff161722),
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
              InkWell(
                  onTap: () {
                    Get.to(SettingScreen());
                  },
                  child: SvgPicture.asset(
                    "assets/images/settings.svg",
                  ))
            ],
          ),
        ),
        CircleAvatar(
          radius: Get.height * 0.06,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(1000),
              child: Image.network(profilepicture, fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Get.height * 0.01, bottom: Get.height * 0.03),
          child: MText(
            text: "@Jacob West",
            colors: Color(0xff161722),
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 33),
        Expanded(
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 1.0, mainAxisSpacing: 1.0),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Get.to(VideoScreen());
                },
                child: Stack(
                  children: [
                    VideoPlayerItem(
                      videoUrl: "assets/video/videoplayback.mp4",
                      isChallenge: true,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset("assets/icons/fi-rr-heart.svg"),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              "4.9M",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
              ;
            },
          ),
        )
      ],
    )));
  }
}
