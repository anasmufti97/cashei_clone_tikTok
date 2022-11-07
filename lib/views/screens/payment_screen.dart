import 'package:cashei/views/widgets/mtext_widget.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'upload_challenge_video_screen.dart';
import 'videos_by_other_user_screen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

String cardnumber = "";
String cardownername = "";
String expirydate = "";
String cvv = "";

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(Get.height * 0.016),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: backContainer(),
                    ),
                    SizedBox(
                      width: Get.width * 0.18,
                    ),
                    MText(
                      text: "Pay Challenge Fee",
                      colors: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Container(
                height: Get.height * 0.65,
                width: Get.width,
                child: Padding(
                  padding: EdgeInsets.all(Get.height * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MText(
                        text: "Mode of payment",
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              height: 66,
                              width: 90,
                              child: Stack(
                                children: [
                                  Center(
                                      child: Image.asset(
                                    "assets/images/Credit Card.png",
                                  )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Image.asset(
                                      "assets/images/pay pall.png",
                                      height: Get.height * 0.055,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color(0xFF0ACF83),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Container(
                            height: 66,
                            width: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Container(
                                      child: Image.asset(
                                    "assets/images/pay pall.png",
                                    height: Get.height * 0.055,
                                  )),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                            height: 66,
                            width: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Container(
                                      child: Image.asset(
                                    "assets/images/google pay.png",
                                    height: Get.height * 0.03,
                                  )),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Text(
                        "Card Number",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          cardnumber = value;

                          setState(() {});
                        },
                        decoration: InputDecoration(
                          suffixIcon: Column(
                            children: [
                              Container(
                                  height: Get.height * 0.07,
                                  child: Image.asset(
                                      "assets/images/Mastercard Logo.png")),
                            ],
                          ),
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: ' 000 0000 0000 0000',
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Text(
                        "Cardholder's name",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      TextFormField(
                        onChanged: (value) {
                          cardownername = value;

                          setState(() {});
                        },
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          hintStyle: const TextStyle(color: Colors.grey),
                          hintText: 'Name',
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Expiry Date",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                TextFormField(
                                  onChanged: (value) {
                                    expirydate = value;

                                    setState(() {});
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText: '  MM / YY',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.05,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "CVV",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 17),
                                ),
                                SizedBox(
                                  height: Get.height * 0.01,
                                ),
                                TextFormField(
                                  onChanged: (value) {
                                    cvv = value;

                                    setState(() {});
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintStyle: TextStyle(color: Colors.grey),
                                    hintText: '  3 digits',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xffF6F6F6),
                    borderRadius: BorderRadius.circular(25)),
              ),
              SizedBox(
                height: Get.height * 0.05,
              ),
              Text(
                "Check your email to confirm payment\nfrom your Bank",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              InkWell(
                onTap: () {
                  Get.to(UploadChallengeVideoScreen());
                },
                child: MyContainer("Complete Payment"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
