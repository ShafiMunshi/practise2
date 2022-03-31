import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise2/model/color_const.dart';
import 'package:practise2/model/strring.dart';

import '../../widgets/widgets.dart';
import '../../widgets/widgets2.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexx = 0;
  List<String> que = [
    'Loading...',
    'Who do you remebe from school?',
    'What are your favourite family vacation?',
    'Did you have best friend and you have to and how did the relationship play out?',
    'How did you enjoy working',
    'What are most achievement you are most proud of?'
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
                    child: FittedBox(child: Text('Logo')),
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
                AllText.headingText,
                style: TextStyle(
                    color: Appcolor.cnColor,
                    fontSize: 17,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Appcolor.cnColor,
                      width: 2,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  que[indexx],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ptSerif(
                      fontWeight: FontWeight.bold,
                      color: Appcolor.cnColor,
                      fontSize: 33),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Builder(builder: (BuildContext context) {
              return InkWell(
                onTap: () {
                  showDialog(
                      context: context, builder: (context) => errorDialog);
                },
                child: cont1(
                  clr: Appcolor.cnColor,
                  txt: 'Copy this Question',
                ),
              );
            }),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  indexx++;
                  print(indexx);
                  // if (int.parse(que[indexx]) < que.length) {
                  //   Scaffold.of(context).showSnackBar(
                  //       SnackBar(content: Text('Waring- please stop tapping')));
                  // }
                });
              },
              child: Container(
                width: 200,
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showToast({String? title, String? content}) {
  Get.snackbar(
    title!,
    content!,
    colorText: Colors.white,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.green,
  );
}

Dialog errorDialog = Dialog(
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0)), //this right here
  child: Container(
    padding: EdgeInsets.all(10),
    height: 400,
    width: 350,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 50, child: Image.asset('name')),
        Text(
          'Download the best 100 question',
          style: TextStyle(
            color: Appcolor.cnColor,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'We would love you to send a ebook for 100 top quetion ',
          style: TextStyle(
            color: Appcolor.cnColor,
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                hintText: 'E-mail',
                hintStyle: TextStyle(
                    color: Appcolor.cnColor, fontWeight: FontWeight.bold)),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Appcolor.cnColor),
            height: 40,
            width: 200,
            child: Text(
              'Get the E-book',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    ),
  ),
);
