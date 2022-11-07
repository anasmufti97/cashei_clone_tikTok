import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'password_changed.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
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
                  child:backContainer()
                ),
              ),
              SizedBox(
                height: Get.height*0.035,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: BoldText("Create new password")
              ),
              SizedBox(
                height: Get.height*0.032,
              ),
              Text("Your new password must be unique\nfrom those previously used.", style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                letterSpacing: 1.3,
                fontSize: 16,
              ),),
              SizedBox(
                height: Get.height*0.06,
              ),
              TextFormField(
                onChanged: (value){
                  newpassword=value;
                  setState(() {

                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintText: 'New Password',
                ),

              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                onChanged: (value){
                  confirmpassword=value;
                  setState(() {

                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey
                  ),
                  hintText: 'Confirm Password',
                ),

              ),

              SizedBox(
                height: Get.height*0.07,
              ),

              InkWell(
                onTap: (){
                  Get.to(passwordChangedScreen());

                },

                child:              MyContainer("Reset Password"),
              )

            ],
          ),
        ),

      ),
    );
  }
}
