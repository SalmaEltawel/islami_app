import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project1/hadeth_model.dart';


class HadethDetails extends StatelessWidget {
  static const String routeName = "ahadethDetails";

  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as HadethModel;
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
              model.title,

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
                " ${model.content[index]}(${index+1})",
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,

                style: GoogleFonts.elMessiri(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              );
            },
            itemCount: model.content.length,
          ),
        ),

      ),
    );
  }
}
