import 'dart:io';

import 'package:cashei/views/screens/User_profile.dart';
import 'package:cashei/views/screens/profile_screen.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:cashei/views/widgets/video_player_iten.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

import '../widgets/mtext_widget.dart';

class UploadChallengeVideoScreen extends StatefulWidget {
  const UploadChallengeVideoScreen({Key? key}) : super(key: key);

  @override
  _UploadChallengeVideoScreenState createState() =>
      _UploadChallengeVideoScreenState();
}

class _UploadChallengeVideoScreenState
    extends State<UploadChallengeVideoScreen> {
  late VideoPlayerController _playerController;
  File? file;
  File? thumbnail;
  addVideo() async {
    final PickedFile =
        await ImagePicker().pickVideo(source: ImageSource.gallery);
    PickedFile != null ? file = File(PickedFile.path) : null;
    if (kIsWeb) {
      _playerController = VideoPlayerController.network(file!.path)
        ..initialize().then((value) {
          setState(() {});
        });
    } else {
      _playerController = VideoPlayerController.file(file!)
        ..initialize().then((value) {
          setState(() {});
        });
    }
  }

  pickThumbnail() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        thumbnail = File(picked.path);
      });
    } else {
      return;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Get.width * 0.07, vertical: Get.height * 0.01),
              child: Column(
                mainAxisSize: MainAxisSize.max,
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
                        width: Get.width * 0.18,
                      ),
                      Text(
                        "Upload Video",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  DottedBorder(
                    color: Colors.grey.withOpacity(0.8),
                    strokeWidth: 2,
                    dashPattern: [10, 5.5],
                    child: file == null
                        ? Container(
                            height: Get.height * 0.35,
                            width: Get.width * 0.8,
                            child: Column(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/_x35_96_x2C__App_x2C__Check_x2C__Essential_x2C__Ui.png",
                                      height: Get.height * 0.17,
                                    ),
                                    Center(
                                        child: Image.asset(
                                            "assets/images/upload 1.png"))
                                  ],
                                ),
                                SizedBox(
                                  height: Get.height * 0.02,
                                ),
                                Text(
                                  "Your video will be private to you\nbefore you make it public",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: Get.width * 0.037,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: Get.height * 0.02,
                                ),
                                InkWell(
                                    onTap: () {
                                      addVideo();
                                    },
                                    child: Container(
                                      height: Get.height * 0.055,
                                      width: Get.width * 0.5,
                                      child: Center(
                                        child: Text(
                                          "Add Video",
                                          style: TextStyle(
                                              color: themecolor, fontSize: 16),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(color: themecolor),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    )),
                              ],
                            ),
                            decoration: BoxDecoration())
                        : _playerController.value.isInitialized
                            ? Container(
                      height: Get.height * 0.35,
                      width: Get.width * 0.8,
                              child: AspectRatio(
                                  aspectRatio: _playerController.value.aspectRatio,
                                  child: VideoPlayer(_playerController),
                                ),
                            )
                            : Container(),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Video Discription",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Container(
                    height: Get.height * 0.13,
                    width: Get.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.7)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      onChanged: (value) {
                        Profile_name = value;
                        setState(() {});
                      },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: '  Tell us something about your video',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: Get.height * 0.04, top: Get.height * 0.01),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Video Thumbnail",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            pickThumbnail();
                          },
                          child: Container(
                            height: Get.height * 0.13,
                            width: Get.width * 0.34,
                            child: thumbnail == null
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: SvgPicture.asset(
                                          "assets/images/Vector (6).svg",
                                          height: Get.height * 0.07,
                                        ),
                                      ),
                                    ],
                                  )
                                : kIsWeb
                                    ? Image.network(thumbnail!.path, fit: BoxFit.fill)
                                    : Image.file(File(thumbnail!.path), fit: BoxFit.fill,),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) {
                                return SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: Get.width * 0.05),
                                        child: Container(
                                          height: Get.height * 0.13,
                                          width: Get.width * 0.34,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Center(
                                                child: SvgPicture.asset(
                                                  "assets/images/Vector (6).svg",
                                                  height: Get.height * 0.07,
                                                ),
                                              ),
                                            ],
                                          ),
                                          decoration: BoxDecoration(
                                              color: Colors.grey.withOpacity(0.5),
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.dialog(Scaffold(
                        backgroundColor: Colors.transparent,
                        body: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 337,
                                width: Get.width * 0.85,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.back();
                                            Get.to(() => UserProfile());
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SvgPicture.asset(
                                                "assets/icons/Icon 24 x24.svg"),
                                          ),
                                        )
                                      ],
                                    ),
                                    Stack(
                                      children: [
                                        Align(
                                          child: Image.asset(
                                            "assets/images/_x35_96_x2C__App_x2C__Check_x2C__Essential_x2C__Ui.png",
                                            height: 78.26,
                                            width: 90,
                                          ),
                                        ),
                                        Align(
                                          child: Image.asset(
                                            "assets/images/Vector.png",
                                            height: 48.09,
                                            width: 48.09,
                                          ),
                                        )
                                      ],
                                    ),
                                    // SizedBox(
                                    //   height: 14.58,
                                    // ),
                                    MText(
                                      text: "Video Upoaded",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    SizedBox(height: 7),
                                    MText(
                                      text:
                                          "Video has been Uploaded Successfully",
                                      fontSize: 12,
                                      colors: Color(0xff7E8C9C),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    SizedBox(height: 23),
                                    Container(
                                      height: .5,
                                      width:
                                          MediaQuery.of(context).size.width * .75,
                                      color: Color(0xff8391A1),
                                    ),
                                    SizedBox(height: 13),
                                    MText(
                                      text: "Your video will be competing for",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      colors: Color(0xff7C67C0),
                                    ),
                                    Container(
                                      height: 83,
                                      width:
                                          MediaQuery.of(context).size.width * .75,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(6),
                                        color: Color(0xffF1EDFD),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 47),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 7),
                                            MText(
                                              text: "SAT 10:00 AM (24/12/2022)",
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            SizedBox(height: 7),
                                            MText(
                                              text: "To",
                                              fontSize: 13,
                                              fontWeight: FontWeight.w400,
                                              colors: Color(0xff86878B),
                                            ),
                                            SizedBox(height: 7),
                                            MText(
                                              text: "SUN 10:00 AM (24/12/2022)",
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ));
                    },
                    child: MyContainer("Upload Video"),
                  )
                ],
              ),
            )));
  }
}
