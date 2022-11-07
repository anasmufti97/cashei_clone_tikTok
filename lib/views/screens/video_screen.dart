import 'package:cashei/views/widgets/mtext_widget.dart';
import 'package:flutter/material.dart';
import 'package:cashei/views/widgets/video_player_iten.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoScreen extends StatefulWidget {
  VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  // final VideoController videoController = Get.put(VideoController());
  buildProfile(String profilePhoto) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(children: [
        Positioned(
          left: 5,
          child: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image(
                image: AssetImage(profilePhoto),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ]),
    );
  }

  buildMusicAlbum(String profilePhoto) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(11),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.grey,
                      Colors.white,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image(
                  image: NetworkImage(profilePhoto),
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }

  List<String> videourls = [
    "assets/video/VID-20210325-WA0009.mp4",
    "assets/video/VID-20210325-WA0011.mp4",
    "assets/video/VID-20210325-WA0015.mp4",
    "assets/video/VID-20210326-WA0022.mp4",
    "assets/video/videoplayback.mp4"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0.0,
              centerTitle: true,
              title: MText(
                text: "Recommended",
                fontSize: 16,
                fontWeight: FontWeight.w700,
                colors: Colors.white,
              ),
              backgroundColor: Colors.transparent,
            ),
            body:
                // Obx(() {
                //   return
                PageView.builder(
              itemCount: videourls.length,
              // itemCount: videoController.videoList.length,
              controller: PageController(initialPage: 0, viewportFraction: 1),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                // final data = videoController.videoList[index];
                return Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (videoPlayerController.value.isPlaying) {
                            videoPlayerController.pause();
                          } else {
                            // If the video is paused, play it.
                            videoPlayerController.play();
                          }
                        });
                      },
                      child: VideoPlayerItem(
                        videoUrl: videourls[index],
                        isChallenge: false,
                        // videoUrl: data.videoUrl,
                      ),
                    ),
                    Column(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "@ Abdul Hanan",
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      // Text(
                                      //   data.caption,
                                      //   style: const TextStyle(
                                      //     fontSize: 15,
                                      //     color: Colors.white,
                                      //   ),
                                      // ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/icons/challenge.png',
                                            height: 15,
                                            width: 15,
                                          ),
                                          SizedBox(
                                            width: 5,
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
                                            child: Text(
                                              "this is dummy caption",
                                              style: const TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                // margin: EdgeInsets.only(top: 10),
                                margin: EdgeInsets.only(top: size.height / 2.5),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    buildProfile(
                                      "assets/images/testpro.jpg",
                                    ),
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            // videoController.likeVideo(data.id);
                                            setState(() {
                                              isLiked = !isLiked;
                                            });
                                          },
                                          child: Icon(
                                            Icons.favorite,
                                            size: 40,
                                            color:
                                                // data.likes.contains(
                                                //         authController.user.uid)
                                                //     ?
                                                isLiked
                                                    ? Colors.red
                                                    : Colors.white,
                                            // : Colors.white,
                                          ),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          "20",
                                          // data.likes.length.toString(),
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    // Column(
                                    //   children: [
                                    //     InkWell(
                                    //       onTap: () => Navigator.of(context).push(
                                    //         MaterialPageRoute(
                                    //           builder: (context) => CommentScreen(
                                    //             id: data.id,
                                    //           ),
                                    //         ),
                                    //       ),
                                    //       child: const Icon(
                                    //         Icons.comment,
                                    //         size: 40,
                                    //         color: Colors.white,
                                    //       ),
                                    //     ),
                                    //     const SizedBox(height: 7),
                                    //     Text(
                                    //       data.commentCount.toString(),
                                    //       style: const TextStyle(
                                    //         fontSize: 20,
                                    //         color: Colors.white,
                                    //       ),
                                    //     )
                                    //   ],
                                    // ),
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Transform.scale(
                                            scaleX: -1,
                                            child: Icon(
                                              Icons.reply,
                                              size: 40,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 3),
                                        Text(
                                          "13",
                                          style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    Image.asset('assets/icons/vector.png')
                                    // CircleAnimation(
                                    //   child: buildMusicAlbum(data.profilePhoto),
                                    // ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            // }
            // ),
          );
        });
  }

  bool isLiked = false;
}
