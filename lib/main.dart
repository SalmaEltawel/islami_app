import 'package:flutter/material.dart';
import 'package:islami_project1/pages/islami.dart';
import 'package:islami_project1/splash_screen.dart';
import 'package:islami_project1/sura_details.dart';

import 'hadeth_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            centerTitle: true,
          ),
          scaffoldBackgroundColor: Colors.transparent,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Color.fromARGB(255, 183, 147, 95),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.black,
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => SplashScreen(),
          IslamiScreen.routeName: (context) => IslamiScreen(),
          SuraDetails.routeName: (context) => SuraDetails(),
          HadethDetails.routeName: (context) => HadethDetails(),

        });
  }
}
