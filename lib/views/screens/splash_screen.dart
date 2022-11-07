import 'dart:async';

import 'package:cashei/views/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => WelcomeScreen())));
  }

  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) {
          return Scaffold(
              body: Stack(
            children: [
              Container(
                height: Get.height,
                width: Get.width,
                child: Image.asset(
                  "assets/images/Rectangle 1 (1).png",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: Get.height,
                width: Get.width,
                color: Colors.black.withOpacity(0.5),
              ),
              // Container(
              //   height: Get.height,
              //   width: Get.width,
              //   child: Image.asset(
              //     "assets/images/Rectangle 190.png",
              //     fit: BoxFit.fill,
              //   ),
              // ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Image.asset(
                    //   "assets/images/app_icon.png",
                    //   // color: Colors.white,
                    // ),
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/app_icon.png"),
                      radius: 50.r,
                      backgroundColor: Colors.white,
                    ),

                    SizedBox(height: 14.h),
                    Text(
                      "Cashei",
                      style: TextStyle(color: Colors.white, fontSize: 32.sp),
                    ),
                    SizedBox(
                      height: Get.height * 0.032,
                    ),
                    Text(
                      "Share your moment with",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xFFEBEBF5),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.005,
                    ),
                    Text(
                      "the cashie community",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              )
            ],
          ));
        });
  }
}
