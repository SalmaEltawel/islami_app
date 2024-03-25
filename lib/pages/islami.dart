import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project1/pages/tabs/ahadeth.dart';
import 'package:islami_project1/pages/tabs/quran.dart';
import 'package:islami_project1/pages/tabs/radio.dart';
import 'package:islami_project1/pages/tabs/sebha.dart';
import 'package:islami_project1/pages/tabs/setting.dart';

class IslamiScreen extends StatefulWidget {
  IslamiScreen({super.key});

  static const String routeName = "islami";

  @override
  State<IslamiScreen> createState() => _IslamiScreenState();
}

class _IslamiScreenState extends State<IslamiScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/bg3.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "اسلامي",
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.w700),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              iconSize: 30,
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/quran.png"),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/sebha.png"),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/quran-quran-svgrepo-com.png"),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/radio.png"),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/images/setting.png"),
                  ),
                  label: "",
                ),
              ]),
          body: tabs[index],
        )
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    SebhaTap(),
    AhadethTap(),
    RadioTap(),
    Setting(),
  ];
}
