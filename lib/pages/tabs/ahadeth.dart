import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AhadethTap extends StatelessWidget {
  const AhadethTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(
          image: AssetImage("assets/images/hadeth_header.png"),
          width: 312,
          height: 219,
        ),
        Divider(
          color: Color(0xffB7935F),
          thickness: 3,
        ),
        Text(textAlign:TextAlign.center ,

          "الأحاديث",
          style:
          GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w600,),
        ),
        Divider(
          color: Color(0xffB7935F),
          thickness: 3,
        ),

      ],
    );
  }
}
