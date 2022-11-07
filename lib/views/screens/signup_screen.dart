import 'package:cashei/views/screens/home_screen.dart';
import 'package:cashei/views/widgets/mtext_widget.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                          () => Get.back();
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
                          text: "Welcome!",
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 38.h),
                      TextFormField(
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide(
                              color: Color(0xffDADADA),
                              width: 1.w,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Color(0xff8391A1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          hintText: 'Name',
                        ),
                      ),
                      SizedBox(height: 19.h),
                      TextFormField(
                        onChanged: (value) {
                          email = value;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide(
                              color: Color(0xffDADADA),
                              width: 1.w,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Color(0xff8391A1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          hintText: 'Email',
                        ),
                      ),
                      SizedBox(height: 19.h),
                      TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          password = value;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide(
                              color: Color(0xffDADADA),
                              width: 1.w,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Color(0xff8391A1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          hintText: 'Password',
                        ),
                      ),
                      SizedBox(height: 19.h),
                      TextFormField(
                        obscureText: true,
                        onChanged: (value) {
                          confirmpassword = value;
                          setState(() {});
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide(
                              color: Color(0xffDADADA),
                              width: 1.w,
                            ),
                          ),
                          hintStyle: TextStyle(
                            color: Color(0xff8391A1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          hintText: 'Confirm password',
                        ),
                      ),
                      SizedBox(height: 27.h),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              check = !check;
                              setState(() {});
                            },
                            child: Container(
                              height: 28,
                              width: 28,
                              decoration: BoxDecoration(
                                color: themecolor.withOpacity(.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.check,
                                size: 20,
                                color: check
                                    ? themecolor
                                    : themecolor.withOpacity(0),
                              )),
                            ),
                          ),
                          Text(
                            "   I agree with  ",
                            style: TextStyle(
                              color: Color(0xff6A707C),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "Terms and Conditions",
                                style: TextStyle(
                                  color: themecolor,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Container(
                                height: 1,
                                width: 120.w,
                                color: themecolor,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 34.h),
                      InkWell(
                        onTap: () {
                          Get.to(() => HomeScreen());
                        },
                        child: MyContainer("Agree and Register"),
                      ),
                      SizedBox(height: 34.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 1,
                            width: 110.66.w,
                            color: Color(0xffE8ECF4),
                          ),
                          MText(
                              text: "Or Login with",
                              colors: Color(0xff6A707C),
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600),
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
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
