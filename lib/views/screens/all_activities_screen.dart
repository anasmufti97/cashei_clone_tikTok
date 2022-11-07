import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AllActivities extends StatefulWidget {
  const AllActivities({Key? key}) : super(key: key);

  @override
  _AllActivitiesState createState() => _AllActivitiesState();
}

class _AllActivitiesState extends State<AllActivities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(Get.width*0.04),
          child: Row(
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
                "All Activites",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          height: Get.height * 0.2,
        ),

        SvgPicture.asset("assets/images/Message Icon.svg", height: Get.height*0.1,),
        SizedBox(
          height: Get.height * 0.03,
        ),
        Text(
          "Notifications aren't available ",
          style: TextStyle(
              color: Colors.black,
              fontSize: 21,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: Get.height * 0.01,
        ),
        Text(
          "Notifications about your account will appear here ",
          style: TextStyle(
              color: Colors.black54,
              fontSize: Get.height*0.018,
          ),
        ),
      ],
    )));
  }
}
