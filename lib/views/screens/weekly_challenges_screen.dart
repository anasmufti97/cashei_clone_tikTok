import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/video_player_iten.dart';
import 'payment_screen.dart';
import 'winners_screen.dart';

class WeeklyChallengesScreen extends StatefulWidget {
  const WeeklyChallengesScreen({Key? key}) : super(key: key);

  @override
  _WeeklyChallengesScreenState createState() => _WeeklyChallengesScreenState();
}

class _WeeklyChallengesScreenState extends State<WeeklyChallengesScreen> {
  int? a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: backContainer()
                  ),
                  SizedBox(
                    width: Get.width * 0.15,
                  ),
                  Text(
                    "Weekly Challenges",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Text(
              "Challenge 1 (Street Dance)",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: Get.height * 0.01,
            ),


            CarouselSlider(
              items: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      height: Get.height*0.4,
                      width: Get.width*0.75,
                      child: Center(child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: VideoPlayerItem(videoUrl: 'assets/video/VID-20210325-WA0015.mp4', isChallenge: true,))),
                    ),
                    InkWell(

                      onTap: (){
                        setState(() {
                          if (videoPlayerController
                              .value.isPlaying) {
                            videoPlayerController.pause();
                          } else {
                            // If the video is paused, play it.
                            videoPlayerController.play();
                          }
                        });

                      },
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius: Get.height*0.032,
                          backgroundColor:themecolor,
                          child:  Center(
                              child:
                              // controller!.value.isPlaying
                              Container(child: Center(child: Padding(
                                padding: const EdgeInsets.only(top:5.0, left: 4),
                                child: SvgPicture.asset("assets/images/Vector (4).svg"),
                              )))
                            // : Icons.play_arrow),
                          ),
                        ),),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: Get.height*0.4,
                      width: Get.width*0.75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: VideoPlayerItem(videoUrl: 'assets/video/VID-20210325-WA0011.mp4', isChallenge: true,))),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (videoPlayerController
                              .value.isPlaying) {
                            videoPlayerController.pause();
                          } else {
                            // If the video is paused, play it.
                            videoPlayerController.play();
                          }
                        });
                      },
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius: Get.height*0.032,
                          backgroundColor:themecolor,
                          child:  Center(
                              child:
                              // controller!.value.isPlaying
                              Container(child: Center(child: Padding(
                                padding: const EdgeInsets.only(top:5.0, left: 4),
                                child: SvgPicture.asset("assets/images/Vector (4).svg"),
                              )))
                            // : Icons.play_arrow),
                          ),
                        ),),
                    )
                  ],
                ),
                //
                //
                // Column(
                //   children: [
                //     Icon(
                //       (Icons.chat_outlined),
                //       size: 120,
                //       color: Colors.white,
                //     ),
                //     Text(
                //       "ONE TO ONE CHAT",
                //       style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 25,
                //           fontWeight: FontWeight.bold),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(top: 14.0),
                //       child: Text(
                //         "Chat with your friends privately",
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 13,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // Column(
                //   children: [
                //     Icon(
                //       (Icons.group_add_sharp),
                //       size: 120,
                //       color: Colors.white,
                //     ),
                //     Text(
                //       "GROUP CHAT",
                //       style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 27,
                //           fontWeight: FontWeight.bold),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(top: 14.0),
                //       child: Text(
                //         "Creat chat rooms with your friends",
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 14,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                // Column(
                //   children: [
                //     Icon(
                //       (Icons.photo_library_rounded),
                //       size: 120,
                //       color: Colors.white,
                //     ),
                //     Text(
                //       "SEND PHOTOS AND VIDEOS",
                //       style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 17,
                //           fontWeight: FontWeight.bold),
                //     ),
                //     Padding(
                //       padding: const EdgeInsets.only(top: 14.0),
                //       child: Text(
                //         "Share photos and videos",
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontSize: 13,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ],
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  height: Get.height*0.42,
                  enableInfiniteScroll: false,
                  onPageChanged: (index , reason){
                    a = index ;
                    setState(() {
                    });

                  }
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 7,
                    width: 7,
                    decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: a==0 ? themecolor:themecolor.withOpacity(0.4)

                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 7,
                      width: 7,
                      decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: a==1 ?themecolor:themecolor.withOpacity(0.4)

                      )
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.02,            ),
            Padding(
              padding: EdgeInsets.only(left:Get.width*0.1),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 2.5,
                          backgroundColor: themecolor,
                        ),
                      ),
                      Text(
                        "Challenger must be 18+ years old",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: CircleAvatar(
                          radius: 2.5,
                          backgroundColor: themecolor,
                        ),
                      ),
                      Text(
                        "Challenger must be pay participation fee of \$5",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.06,            ),
            InkWell(
              onTap: (){
                Get.to(PaymentScreen());
              },
              child: Container(
                height: Get.height*0.065,
                width: Get.width*0.75,
                child: Center(
                  child: Text("Take Challenges", style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),),
                ),
                decoration:BoxDecoration(
                    color: themecolor,
                    borderRadius: BorderRadius.circular(10)

                ) ,
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,            ),
            InkWell(
              onTap: (){

                Get.to(WinnerScreen());
              },
              child: Container(
                height: Get.height*0.065,
                width: Get.width*0.75,
                child: Center(
                  child: Text("View Challenges Videos", style: TextStyle(
                      color: themecolor,
                      fontSize: 16
                  ),),
                ),
                decoration:BoxDecoration(
                    border: Border.all(color: themecolor),
                    borderRadius: BorderRadius.circular(10)

                ) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
