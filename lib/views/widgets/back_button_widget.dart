import 'package:cashei/views/contants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopScreen extends StatelessWidget {
  const PopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return GestureDetector(
      onTap: (){
        Get.back();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
        // height: width *0.065 ,
        // width: width *0.065 ,
        decoration: BoxDecoration(
          border: Border.all(color: ColorPalette.grey),
          borderRadius: BorderRadius.circular(15)
        ),
        child:  Center(
          child: Icon(Icons.arrow_back_ios_new,color: ColorPalette.black,),
        ),
      ),
    );
  }
}
