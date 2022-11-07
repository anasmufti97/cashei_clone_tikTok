import 'package:cashei/views/screens/login_screen.dart';
import 'package:cashei/views/widgets/mtext_widget.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
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
                color: Colors.black.withOpacity(0.7),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 113.h),
                    CircleAvatar(
                      radius: 50.r,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images/app_icon.png"),
                    ),
                    SizedBox(height: 19.53.h),
                    Text(
                      "Cashei",
                      style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 32.sp,
                      ),
                    ),
                    SizedBox(height: 45.71.h),
                    MText(
                      text: "WelcomeAgain!",
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700,
                      colors: Color(0xffFFFFFF),
                    ),
                    SizedBox(height: 12.h),
                    Text("Discover interesting short videos.",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xffEBEBF5),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                    SizedBox(height: Get.height * 0.005),
                    MText(
                      text: "Share your moments with the CutG",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      colors: Color(0xffEBEBF5),
                    ),

                    SizedBox(
                      height: Get.height * 0.005,
                    ),
                    MText(
                      text: "community",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      colors: Color(0xffEBEBF5),
                    ),
                    SizedBox(height: 70.h),
                    InkWell(
                      onTap: () {
                        Get.to(() => LoginScreen());
                      },
                      child: MyContainer("Login"),
                    ),
                    SizedBox(height: 19.h),
                    InkWell(
                      onTap: () {
                        Get.to(() => SignUpScreen());
                      },
                      child: Container(
                        height: 52.h,
                        width: 332.w,
                        child: Center(
                            child: MText(
                          text: "Register",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          colors: Colors.white,
                        )),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                    // SizedBox(height: 185.h),
                    Expanded(child: const Text("")),
                  ],
                ),
              )
            ],
          ));
        });
  }
}
