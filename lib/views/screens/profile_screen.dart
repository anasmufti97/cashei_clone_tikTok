import 'package:cached_network_image/cached_network_image.dart';
import 'package:cashei/views/contants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:cashei/views/contants/constants.dart';

import '../widgets/back_button_widget.dart';
import '../widgets/mtext_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // final ProfileController profileController = Get.put(ProfileController());

  @override
  void initState() {
    super.initState();
    // profileController.updateUserId(widget.uid);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "Profile Screen",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
