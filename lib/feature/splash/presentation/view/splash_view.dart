import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mtb/core/constant/colors_style.dart';

import '../../../auth/presentation/view/Login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  @override
  void initState() {
    super.initState();
    build(context);
    timerNav();
  }

  void timerNav() {
    Timer(
      Duration(seconds: 3),() => Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginView()),
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/images/FINAL-LOGO.png"),
            )
          ],
        ),
      ),
    );
  }
}
