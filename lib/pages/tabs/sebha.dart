import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTap extends StatefulWidget {
  SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int counter = 0;
  int index = 0;
  List<String> zekr = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر "
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              height: 105,
              width: 73,
              child:
                  const Image(image: AssetImage("assets/images/head of seb7a.png"))),
          Container(
              height: 234,
              width: 232,
              child: InkWell(
                onTap: () {
                  setState(() {
                    onClickImage();
                    counter++;
                  });
                },
                child:
                    const Image(image: AssetImage("assets/images/body of seb7a.png")),
              )),
          const SizedBox(
            height: 40,
          ),
          Text(
            "عدد التسبيحات",
            style: GoogleFonts.elMessiri(
                fontSize: 25, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffB7935F),
            ),
            width: 69,
            height: 81,
            child: Center(
                child: Text(
              "$counter",
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.elMessiri(fontWeight: FontWeight.w400, fontSize: 25),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: 137,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xffB7935F),
              ),
              child: Center(
                  child: Text(
                "${zekr[index]}",
                style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w400),
              )))
        ],
      ),
    );
  }

  onClickImage() {
    for (int i = 0; i <= 30; i++) {
    }
    if (counter == 30) {
      counter = 0;
      index++;
    }
    if (index >= 4) {
      index = 0;
    }
  }
}
