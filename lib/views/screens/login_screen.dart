import 'package:cashei/views/screens/forget_password.dart';
import 'package:cashei/views/screens/home_screen.dart';
import 'package:cashei/views/screens/signup_screen.dart';
import 'package:cashei/views/widgets/mtext_widget.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    email.dispose();
    password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        builder: (context, child) {
          return Scaffold(
            body: Container(
              height: Get.height,
              width: Get.width,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 71.h),
                      InkWell(
                        onTap: () {
                          Get.back();
                          setState(() {});
                        },
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: backContainer()),
                      ),
                      SizedBox(height: 33.h),
                      Align(
                        alignment: Alignment.topLeft,
                        child: MText(
                          text: "Welcome back! Glad to",
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          colors: Color(0xff1B2512),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: MText(
                          text: "see you, Again!",
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          colors: Color(0xff1B2512),
                        ),
                      ),
                      SizedBox(height: 73.h),
                      TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide(
                              color: Color(0XFFDADADA),
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Color(0XFF8391A1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          hintText: 'Enter your email',
                        ),
                      ),
                      SizedBox(height: 19.h),
                      TextFormField(
                        controller: password,
                        obscureText: obscuretext,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  obscuretext = !obscuretext;
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                      height: Get.height * 0.07,
                                      child: SvgPicture.asset(
                                          "assets/images/Group.svg")),
                                ],
                              )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide(
                              color: Color(0XFFDADADA),
                              width: 1.w,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Color(0XFF8391A1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          hintText: 'Enter your password',
                        ),
                      ),
                      SizedBox(height: 12.h),
                      InkWell(
                        onTap: () {
                          Get.to(ForgetPassword());
                        },
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: MText(
                              text: "Forgot Password?",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            )),
                      ),
                      SizedBox(height: 65.h),
                      InkWell(
                        onTap: () {
                          Get.to(HomeScreen());
                        },
                        child: MyContainer("Login"),
                      ),
                      SizedBox(height: 34.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 1,
                            width: 110.66.w,
                            color: Color(0xffE8ECF4),
                          ),
                          Text(
                            "Or Login with",
                            style: TextStyle(
                                color: Color(0xff6A707C),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            height: 1,
                            width: 110.66.w,
                            color: Color(0xffE8ECF4),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          otherloginContainer("assets/images/facebook_ic.svg"),
                          otherloginContainer("assets/images/google_ic.svg"),
                          otherloginContainer("assets/images/cib_apple.svg"),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                color: Color(0xff1E232C),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => SignUpScreen());
                            },
                            child: Text(
                              " Register Now",
                              style: TextStyle(
                                color: themecolor,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
