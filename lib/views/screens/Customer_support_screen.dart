import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomerSupportScreen extends StatefulWidget {
  const CustomerSupportScreen({Key? key}) : super(key: key);

  @override
  _CustomerSupportScreenState createState() => _CustomerSupportScreenState();
}

class _CustomerSupportScreenState extends State<CustomerSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child:

    Column(
      children: [
        Padding(
          padding:  EdgeInsets.all(Get.width*0.04),
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: backContainer()),
              SizedBox(
                width: Get.width * 0.17,
              ),
              Text(
                "Customer Support",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal:Get.width*0.02),
                          child: CircleAvatar(),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Babyag",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: Get.height*0.01,
                            ),
                            Container(
                              width: Get.width*0.62,
                              child: Text(
                                "Lorem ipsum dolor sit amet, elit poo consectetur adipiscing elit. Aenean sit.",
                                style: TextStyle(
                                  overflow: TextOverflow.clip,
                                  color: Colors.grey,
                                  fontSize: 15,
                                )
                                ,
                              ),
                            ),


                          ],
                        ),
                        Text(
                          "4 days ago",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),

                      ],
                    ),
                  );
                }),
          ),
        Row(
          children: [
            Padding(
              padding:  EdgeInsets.all(Get.width*0.03),
              child: SvgPicture.asset("assets/icons/fi-rs-comment.svg", height: Get.height*0.03,),
            ),
            Text(
              "Message to Admin",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(Get.width*0.05),
          child: Container(
            height: Get.height*0.18,
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: '  Type to send a message',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(Get.width*0.02),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: SvgPicture.asset("assets/icons/fi-rs-paper-plane.svg")),
                )

              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.4),

              )
            ),
          ),
        )




      ],
    )));
  }
}
