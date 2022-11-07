import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

List<String> images = [
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
  "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
];

var themecolor = Color(0xFF7C67C0);


String name = "";
String email = "";
String password = "";
var obscuretext = true;
String newpassword = "";
String confirmpassword = "";
bool check = false;
String Profile_name = "";
String profilepicture = "https://banner2.cleanpng.com/20180329/zue/kisspng-computer-icons-user-profile-person-5abd85306ff7f7.0592226715223698404586.jpg";


MyContainer(String text) {
  return Container(
    height: Get.height * 0.07,
    width: Get.width * 0.9,
    child: Center(
      child: Text(text, style: TextStyle(
          color: Colors.white,
          fontSize: 16
      ),),
    ),
    decoration: BoxDecoration(
        color: themecolor,
        borderRadius: BorderRadius.circular(10)

    ),
  );
}


otherloginContainer(String imagetext) {
  return
    Container(
      height: Get.height * 0.071,
      width: Get.width * 0.28,
      child: Center(child: SvgPicture.asset(imagetext)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.withOpacity(0.8))
      ),
    );
}

BoldText(String text) {
  return Text(text, style: TextStyle(
      color: Colors.black,
      fontSize: 26,
      fontWeight: FontWeight.bold
  ),);
}

backContainer() {
  return Container(
    height: 42,
    width: 42,
    child: const Center(
        child: Icon(
          Icons.arrow_back_ios_rounded,
          size: 18,
          color: Colors.black,
        )),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:
        Border.all(color: Colors.grey.withOpacity(0.8))),
  );
}

SettingRow(String Name, String Icon) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: Get.height * 0.02),
    child: Row(
      children: [
        SvgPicture.asset(Icon, height: 20,),
        SizedBox(
          width: Get.width * 0.04,
        ),

        Text(Name, style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w400
        ),)


      ],
    ),
  );
}

