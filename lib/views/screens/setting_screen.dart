import 'package:cashei/views/screens/bank_details_screen.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Customer_support_screen.dart';
import 'all_activities_screen.dart';
import 'user_profile_edit_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.04, vertical: Get.height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: backContainer()),
              SizedBox(
                width: Get.width * 0.26,
              ),
              Text(
                "Settings",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Text(
            "ACCOUNT",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          InkWell(
            onTap: () {
              Get.to(UserProfileEditScreen());
            },
            child: SettingRow(
                "Edit Profile", "assets/icons/Account Stroke Icon.svg"),
          ),
          InkWell(
            onTap: () {
              Get.to(AllActivities());
            },
            child: SettingRow("All Activities", "assets/icons/list 1.svg"),
          ),
          InkWell(
            onTap: () {
              Get.to(BankDetailScreen());
            },
            child: SettingRow(
                "Bank Details", "assets/icons/Wallet Stroke Icon.svg"),
          ),
          SettingRow(
              "Invite Friends", "assets/icons/Add Account Stroke Icon.svg"),
          SettingRow("Logout", "assets/icons/fi-rr-sign-out.svg"),
          SizedBox(
            height: Get.height * 0.03,
          ),
          Center(
            child: Container(
              height: 1,
              width: Get.width * 0.9,
              color: Colors.grey.withOpacity(0.6),
            ),
          ),
          SizedBox(
            height: Get.height * 0.02,
          ),
          Text(
            "SUPPORT",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),

          InkWell(
            onTap: (){
          Get.to(CustomerSupportScreen());
            },
       child:           SettingRow("Customer Support", "assets/icons/Pen Stroke Icon.svg"),
          )


        ],
      ),
    )));
  }
}
