import 'package:cashei/views/screens/create_new_password.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height * 0.12,
              ),
              InkWell(
                onTap: () {
                  Get.back();
                  setState(() {});
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: backContainer()
                ),
              ),
              SizedBox(
                height: Get.height * 0.035,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: BoldText("OTP Verification")),
              SizedBox(
                height: Get.height * 0.032,
              ),
              Text(
                "Enter the verification code we just sent\non your email address.",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  letterSpacing: 1.3,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: Get.height * 0.06,
              ),
              OtpTextField(
                borderRadius: BorderRadius.circular(10),
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
fontSize: 24
                ),
                fieldWidth: Get.width * 0.2,
                numberOfFields: 4,
                borderColor: themecolor,
                showFieldAsBox: true,
                onCodeChanged: (String code) {


                  // code


                },
              ),
              SizedBox(
                height: Get.height * 0.07,
              ),
              InkWell(
                onTap: () {
                  Get.to(NewPasswordScreen());
                },
                child: MyContainer("Verify"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
