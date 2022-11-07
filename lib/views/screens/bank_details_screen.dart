import 'package:cashei/views/screens/payment_screen.dart';
import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:country_picker/country_picker.dart';

class BankDetailScreen extends StatefulWidget {
  const BankDetailScreen({Key? key}) : super(key: key);

  @override
  _BankDetailScreenState createState() => _BankDetailScreenState();
}

var choose_country_name = "";
var choose_country_flage = "";
String bank_account_number="";
String account_holder_name="";

class _BankDetailScreenState extends State<BankDetailScreen> {
  String bank_name = 'Coin Bottle Challenge 2';
  String Swift_Code = 'Coin Bottle Challenge 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(Get.width * 0.035),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: backContainer()),
                SizedBox(
                  width: Get.width * 0.22,
                ),
                Text(
                  "Bank Details",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width*0.04),
              child: Column(
                children: [
                  /// Choose Country

                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height * 0.025, bottom: Get.height * 0.015),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Choose Country",
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showCountryPicker(
                        context: context,
                        showPhoneCode: false,
                        onSelect: (Country country) {
                          choose_country_name = country.name;
                          choose_country_flage = country.flagEmoji;
                          setState(() {});
                        },
                      );
                    },
                    child: Container(
                      height: Get.height * 0.073,
                      width: Get.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: Get.width * 0.01),
                            child: Text(
                              choose_country_flage,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: Get.width * 0.03, right: Get.width * 0.07),
                            child: Container(
                              height: Get.height * 0.04,
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            choose_country_name,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            width: Get.width * 0.35,
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey)),
                    ),
                  ),

                  /// Bank Name
                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height * 0.025, bottom: Get.height * 0.015),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Bank Name",
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    height: Get.height * 0.074,
                    width: Get.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownButton<String>(
                            value: bank_name,
                            icon: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.transparent,
                            ),
                            elevation: 20,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                bank_name = newValue!;
                              });
                            },
                            underline: DropdownButtonHideUnderline(
                                child: Container(
                              color: Colors.transparent,
                              // height: 5,
                              // width: 20,
                            )),
                            items: <String>[
                              'Coin Bottle Challenge 1',
                              'Coin Bottle Challenge 2',
                              'Coin Bottle Challenge 3',
                              'Coin Bottle Challenge 5'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          SvgPicture.asset("assets/images/Vector (3).svg")
                        ],
                      ),
                    ),
                  ),

                  /// bank Account Number

                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height * 0.025, bottom: Get.height * 0.015),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Bank Account Number",
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
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

                  /// Account holder name
                  ///
                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height * 0.025, bottom: Get.height * 0.015),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Account Holder Name",
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ),
                  TextFormField(
                    onChanged: (value) {
                      account_holder_name = value;
                      setState(() {});
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Name',
                    ),
                  ),

                  /// Address
                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height * 0.025, bottom: Get.height * 0.015),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Address",
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    height: Get.height * 0.12,
                    width: Get.width,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.location_on_outlined, size: 35,color: Colors.grey,),
                          ),
                          Text("Flat 100 Trivani Apartments, Pitampur,\nNew Dehli, India",style: TextStyle(
fontSize: 17,
                            fontWeight: FontWeight.w500
                          ),)

                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey)),
                  ),

                  /// Swift Code
                  Padding(
                    padding: EdgeInsets.only(
                        top: Get.height * 0.025, bottom: Get.height * 0.015),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Swift Code",
                        style:
                            TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    height: Get.height * 0.074,
                    width: Get.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(7)),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownButton<String>(
                            value: Swift_Code,
                            icon: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colors.transparent,
                            ),
                            elevation: 20,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                Swift_Code= newValue!;
                              });
                            },
                            underline: DropdownButtonHideUnderline(
                                child: Container(
                              color: Colors.transparent,
                              // height: 5,
                              // width: 20,
                            )),
                            items: <String>[
                              'Coin Bottle Challenge 1',
                              'Coin Bottle Challenge 2',
                              'Coin Bottle Challenge 3',
                              'Coin Bottle Challenge 5'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          SvgPicture.asset("assets/images/Vector (3).svg")
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: Get.height*0.03,
                  )

                ],
              ),
            ),
            width: Get.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.13)),
          ),
          SizedBox(
            height: Get.height*0.02,
          ),
          MyContainer("Save"),
          SizedBox(
            height: Get.height*0.03,
          ),


        ],
      ),
    )));
  }
}
