import 'dart:io';

import 'package:cashei/views/widgets/utitlities.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UserProfileEditScreen extends StatefulWidget {
  const UserProfileEditScreen({Key? key}) : super(key: key);

  @override
  _UserProfileEditScreenState createState() => _UserProfileEditScreenState();
}

class _UserProfileEditScreenState extends State<UserProfileEditScreen> {
  File? profilePic;
  pickProfile() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked == null)
      return;
    else {
      setState(() {
        profilePic = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding:
          EdgeInsets.symmetric(vertical: 8.0, horizontal: Get.width * 0.04),
      child: SingleChildScrollView(
        child: Column(
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
                  "Edit Profile",
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
            InkWell(
              onTap: () {
                pickProfile();
              },
              child: CircleAvatar(
                radius: 50,
                backgroundImage: profilePic == null
                    ? NetworkImage(profilepicture)
                    : FileImage(File(profilePic!.path)) as ImageProvider,
                child: Center(
                  child:
                      Icon(Icons.camera_alt_outlined, size: Get.height * .05),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: Get.height * 0.02, bottom: Get.height * 0.03),
              child: Text(
                "Change Photo",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.074,
              width: Get.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(7)),
              child: TextFormField(
                onChanged: (value) {
                  Profile_name = value;
                  setState(() {});
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: '  Name',
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bio",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              height: Get.height * 0.15,
              width: Get.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                onChanged: (value) {
                  Profile_name = value;
                  setState(() {});
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: '  Add a bio to your profile',
                ),
              ),
            ),
            SizedBox(
              height: Get.height * 0.07,
            ),
            MyContainer("Save Changes")
          ],
        ),
      ),
    )));
  }
}
