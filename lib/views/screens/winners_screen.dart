import 'package:cashei/views/widgets/utitlities.dart';
import 'package:cashei/views/widgets/video_player_iten.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class WinnerScreen extends StatefulWidget {
  WinnerScreen({Key? key}) : super(key: key);

  @override
  State<WinnerScreen> createState() => _WinnerScreenState();
}

class _WinnerScreenState extends State<WinnerScreen> {
  @override
  String dropdownValue = 'Coin Bottle Challenge 2';
  String dataSource =
      "https://shivanesboutique.com/pub/media/S_MAM_VIDEO_10042021.mp4";
  String assetsss = "assets/videos/video.mp4";
  List<String> videourls = [
    "assets/video/VID-20210325-WA0009.mp4",
    "assets/video/VID-20210325-WA0011.mp4",
    "assets/video/VID-20210325-WA0015.mp4",
    "assets/video/VID-20210326-WA0022.mp4",
    "assets/video/videoplayback.mp4"
  ];
  int selectedIndex = 0;
  @override
  void initState() {
    videoPlayerController.pause();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(Get.width * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: backContainer(),
                    ),
                    SizedBox(
                      width: Get.width * 0.24,
                    ),
                    Text(
                      "Winners",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  "Select Challenges",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: Get.height * 0.01,
                ),
                Container(
                  height: Get.height * 0.07,
                  width: Get.width,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButton<String>(
                          value: dropdownValue,
                          icon: Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.transparent,
                          ),
                          elevation: 20,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          underline: DropdownButtonHideUnderline(
                              child: Container(
                                color: Colors.transparent,
                                // height: 5,
                                // width: 20,
                              )),
                          items: <String>[
                            'Coin Bottle Challenge 1',
                            'Coin Bottle Challenge 2',
                            'Coin Bottle Challenge 3',
                            'Coin Bottle Challenge 5'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        SvgPicture.asset("assets/images/Vector (3).svg")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: videourls.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SAT 10:00 AM - SUN 9:59 AM",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: Get.height * 0.01,
                            ),
                            Container(
                                height: Get.height * 0.2,
                                width: Get.width,
                                child: Stack(
                                  children: [
                                    VideoPlayerItem(
                                      videoUrl: videourls[index],
                                      isChallenge: true,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 5,
                                        ),
                                        Center(
                                          child: CircleAvatar(
                                            radius: Get.height * 0.032,
                                            backgroundColor: Color(0xFF8391A1),
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  selectedIndex = index;
                                                  if (videoPlayerController
                                                      .value.isPlaying) {
                                                    videoPlayerController.pause();
                                                  } else {
                                                    // If the video is paused, play it.
                                                    videoPlayerController.play();
                                                  }
                                                });
                                              },
                                              child: Center(
                                                child: selectedIndex == index
                                                    ? !videoPlayerController
                                                    .value.isPlaying
                                                    ? Container(
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets
                                                          .only(
                                                          top: 5.0,
                                                          left: 4),
                                                      child: SvgPicture.asset(
                                                          "assets/images/Vector (4).svg"),
                                                    ),
                                                  ),
                                                )
                                                    : const Icon(
                                                  Icons.pause,
                                                  color: Colors.white,
                                                )
                                                    : Container(
                                                  child: Center(
                                                    child: Padding(
                                                      padding:
                                                      const EdgeInsets
                                                          .only(
                                                          top: 5.0,
                                                          left: 4),
                                                      child: SvgPicture.asset(
                                                          "assets/images/Vector (4).svg"),
                                                    ),
                                                  ),
                                                ),
                                                // : Icons.play_arrow),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(
                                                      Get.width * 0.014),
                                                  child: CircleAvatar(
                                                    child: Image.asset(
                                                        "assets/icons/person.png"),
                                                    radius: Get.height * 0.02,
                                                  ),
                                                ),
                                                Text(
                                                  "Jacob Watson",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              children: [
                                                SvgPicture.asset(
                                                    "assets/icons/fi-rr-heart.svg"),
                                                Padding(
                                                  padding: EdgeInsets.all(
                                                      Get.width * 0.014),
                                                  child: Text(
                                                    "4.9M",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: Get.height * 0.012,
                            ),
                            Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout..",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: Get.height * 0.02,
                            ),
                          ],
                        );
                      }),
                ),
              ],
            ),
          )),
    );
  }
}