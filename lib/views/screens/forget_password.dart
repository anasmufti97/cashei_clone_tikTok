import 'package:cashei/views/screens/otp_verification.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                height: Get.height*0.12,
              ),
              InkWell(
                onTap: (){

                  Get.back();
                  setState(() {

                  });
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: backContainer(),
                ),
              ),
              SizedBox(
                height: Get.height*0.035,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: BoldText("Forgot Password?")
              ),
              SizedBox(
                height: Get.height*0.032,
              ),
              Text("Dont't worry! It occurs.PLease enter the \nemail address linked with your account.", style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  letterSpacing: 0.7,
                  fontSize: 16,
              ),),
              SizedBox(
                height: Get.height*0.06,
              ),
              TextFormField(
                onChanged: (value){
                  email=value;
                  setState(() {

                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintText: 'Enter your email',
                ),

              ),

              SizedBox(
                height: Get.height*0.07,
              ),

              InkWell(
                onTap: (){
                  Get.to(OTPVerificationScreen());

                },

                child:              MyContainer("Send Code"),
              )

            ],
          ),
        ),

      ),
    );
  }
}
