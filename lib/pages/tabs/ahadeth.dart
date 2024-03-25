import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_project1/hadeth_details.dart';

import '../../hadeth_model.dart';

class AhadethTap extends StatefulWidget {
  AhadethTap({super.key});

  @override
  State<AhadethTap> createState() => _AhadethTapState();
}

class _AhadethTapState extends State<AhadethTap> {
  List<HadethModel> allAhadet = [];

  @override
  Widget build(BuildContext context) {
    if(allAhadet.isEmpty){
      readHadethFile();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Image(
          image: AssetImage("assets/images/hadeth_header.png"),
          width: 312,
          height: 219,
        ),
        const Divider(
          color: Color(0xffB7935F),
          thickness: 3,
        ),
        Text(
          textAlign: TextAlign.center,
          "الأحاديث",
          style: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Divider(
          color: Color(0xffB7935F),
          thickness: 3,
        ),
        Expanded(
            child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
              thickness: 1.5,
              color: Color(0xffB7935F),
              endIndent: 40,
              indent: 40),
          itemBuilder: (BuildContext context, int index) {

            return InkWell(
              onTap: () {
                Navigator.pushNamed(context,HadethDetails.routeName,
                    arguments: allAhadet[index]
                );
              },
              child: Text(
                allAhadet[index].title,
                textAlign: TextAlign.center,
                style:GoogleFonts.elMessiri(fontWeight: FontWeight.w400,fontSize: 25),),
            );

          },
          itemCount: allAhadet.length,
        )),
      ],
    );
  }

  readHadethFile() async {
    String hadethFile = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadeth = hadethFile.split("#");
    for (int i = 0; i < ahadeth.length; i++) {
      String hadethOne = ahadeth[i];
      List<String> hadethLines = hadethOne.trim().split("\n");
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      List<String> content = hadethLines;
      HadethModel hadethModel = HadethModel(title: title, content: content);
      allAhadet.add(hadethModel);
    }
    setState(() {

    });
  }
}
