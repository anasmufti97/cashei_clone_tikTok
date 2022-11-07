import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'views/screens/splash_screen.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp().then((value) {
  //   // Get.put(AuthController());
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TikTok Clone',
        home: SplashScreen(),
      );
    });
  }
}
