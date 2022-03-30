import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise2/model/color_const.dart';

import '../widgets/widgets.dart';
import '../widgets/widgets2.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexx = 0;

  List<Widget> question = [
    InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Text(
          'Loading',
          style: GoogleFonts.ptSerif(
              fontWeight: FontWeight.bold,
              color: Appcolor.cnColor,
              fontSize: 33),
        ),
      ),
    ),
    InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(
              color: Appcolor.cnColor,
              width: 2,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          'Why do you remember for school?',
          textAlign: TextAlign.center,
          style: GoogleFonts.ptSerif(
              fontWeight: FontWeight.bold,
              color: Appcolor.cnColor,
              fontSize: 33),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bgColor,
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: Container(
                    height: 30,
                    width: 30,
                    color: Appcolor.cnColor,
                    child: Text('Logo'),
                  ),
                ),
                cont2(
                  txt: 'Record the screen',
                  radiussss: 10,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Grow closer to your loved ones\nby asking them this question.',
                style: TextStyle(
                    color: Appcolor.cnColor,
                    fontSize: 17,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            question[indexx],
            
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  indexx++;
                });
              },
              child: cont1(
                clr: Appcolor.cnColor,
                txt: 'Copy this Question',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Appcolor.cnColor, width: 2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.copy,
                    color: Appcolor.cnColor,
                  ),
                  Text(
                    'try another one',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Appcolor.cnColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
