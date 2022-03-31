import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practise2/model/color_const.dart';
import 'package:practise2/model/strring.dart';

class WebHome extends StatefulWidget {
  const WebHome({ Key? key }) : super(key: key);

  @override
  State<WebHome> createState() => _WebHomeState();
}

class _WebHomeState extends State<WebHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bgColor,
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(child: Container(
                  height: 50.h,
                  width: 50.h,
                  color: Colors.blue,
                  child: FittedBox(child: Text('Logo')),
                ),),
                 Align(
              alignment: Alignment.center,
              child: Text(
                AllText.headingText,
                style: TextStyle(
                    color: Appcolor.cnColor,
                    fontSize: 17.sp,
                    fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(height: 25.h,),
              Container(
                alignment: Alignment.center,
                height: 120.h,
                width: 400,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                
                ),
                child: Text('Loading',style:GoogleFonts.ptSerif(
                  fontWeight: FontWeight.bold,
                  color: Appcolor.cnColor,
                  fontSize: 35,

                ),),
              )
              ],

            )
          ],
        ),
      ),
      
    );
  }
}