import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project1/sura_model.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "suraDetails";

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)!.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      readSuraFile(suraModel.index);
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
        "assets/images/bg3.png",
      ))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            suraModel.name,
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(16),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(
              thickness: 1,
              color: Color(0xffB7935F),
              endIndent: 50,
              indent: 50,
            ),
            itemBuilder: (context, index) {
              return Text(
                " ${verses[index]}(${index+1})",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,

                style: GoogleFonts.elMessiri(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              );
            },
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  void readSuraFile(int index) async {
    //Future<String>
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = sura.split("\n");
    verses = suraLines;
    print(verses);
    setState(() {});
  }
}
