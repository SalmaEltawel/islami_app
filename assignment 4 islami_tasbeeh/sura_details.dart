import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project1/sura_model.dart';

class SuraDetails extends StatelessWidget {
  static const String routeName="suraDetails";
  const SuraDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var suraModel=ModalRoute.of(context)!.settings.arguments as SuraModel;
    return Container(
      decoration:BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/images/bg3.png,",))) ,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(suraModel.name,style: GoogleFonts.elMessiri(fontSize: 20,fontWeight: FontWeight.w700),),),

      ),
    );
  }
}
