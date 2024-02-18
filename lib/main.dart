import 'package:flutter/material.dart';
import 'package:islami_project1/pages/islami.dart';
import 'package:islami_project1/splash_screen.dart';
import 'package:islami_project1/sura_details.dart';


void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        IslamiScreen.routeName:(context)=>IslamiScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),

      }


    );
  }
}
