import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:timetable/screens/home_screen_mobile.dart';
import 'package:timetable/screens/home_screen_pc.dart';
import 'package:timetable/theme/app_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() async {
    bool platform;

    if (Platform.isWindows || kIsWeb) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
            context, CupertinoPageRoute(builder: (context) => HomeScreenPC()));
      });
    } else {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(context,
            CupertinoPageRoute(builder: (context) => HomeScreenMobile()));
      });
    }
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'TimeTable',
          style: AppTextStyle.h1BoldBlackGilroy,
        ),
      ),
    );
  }
}
