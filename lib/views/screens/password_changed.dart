import 'package:cashei/views/screens/login_screen.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class passwordChangedScreen extends StatefulWidget {
  const passwordChangedScreen({Key? key}) : super(key: key);

  @override
  _passwordChangedScreenState createState() => _passwordChangedScreenState();
}


class _passwordChangedScreenState extends State<passwordChangedScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              
              Container(
                height: Get.height*0.2,
                child:Stack(
                  children: [
                    
                    
                    Center(child: Image.asset("assets/images/_x35_96_x2C__App_x2C__Check_x2C__Essential_x2C__Ui.png")),
                    Padding(
                      padding:EdgeInsets.only(top: Get.height*0.06),
                      child: Center(child: Image.asset("assets/images/Vector.png")),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: Get.height*0.05,
              ),
              Align(
                  alignment: Alignment.center,
                  child: BoldText("Password Changed!",)
              ),
              SizedBox(
                height: Get.height*0.032,
              ),
              Text("Your password has been\nchanged successfully.",textAlign: TextAlign.center, style: TextStyle(
                color: Colors.black.withOpacity(0.6),

                fontSize: 16,
              ),),
              SizedBox(
                height: Get.height*0.06,
              ),

              InkWell(
                onTap:(){

                  Get.to(LoginScreen());


                },

                child:MyContainer("Back to Login"),

              )

            ],
          ),
        ),

      ),
    );
  }
}
