import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sunpetro2/constant/r.dart';
import 'package:sunpetro2/screen/homepageScreen.dart';
import 'package:sunpetro2/screen/auth/loginScreen.dart';
import '../../constant/R/colors.dart';

class SpalashScreen extends StatefulWidget {
  SpalashScreen({Key? key}) : super(key: key);

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      startSplashScreen();
    });
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return HomePageScreen();
        }));
      } else {
        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return LoginScreen();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.bgSplash,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image(
              image: AssetImage(R.icons.iconSplashTopRight),
              width: 150.w,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 125.h),
            child: Text(
              R.strings.titleSplashScreen,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Text(
              R.strings.taglineSplashScreen,
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 125.h,
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image(
              image: AssetImage(R.icons.iconSplashBottomLeft),
              width: 150.w,
            ),
          )
          // Container(
          //   padding: EdgeInsets.only(top: 10.h, right: 190.w),
          //   child: Image(
          //     image: AssetImage("assets/SquigglesButttom.png"),
          //   ),
          // ),
        ],
      ),
    );
  }
}
