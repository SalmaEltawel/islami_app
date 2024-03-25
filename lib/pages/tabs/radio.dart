import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Image(image: AssetImage("assets/images/radio_body.png")),
        ),
        Text("إذاعة القرآن الكريم,",style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600)),
        Image(image: AssetImage("assets/images/play_list.png"))
      ],
    );
  }
}
