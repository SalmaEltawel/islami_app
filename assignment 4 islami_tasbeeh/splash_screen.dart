import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_project1/pages/islami.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashScreen";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   Future.delayed(const Duration(seconds: 2), () {
     Navigator.pushAndRemoveUntil(
       context,
       MaterialPageRoute(builder: (context) =>  IslamiScreen()),
           (route) => false,
     );
   });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: Image.asset("assets/images/splash.png")),
      ),
    );
  }
}
