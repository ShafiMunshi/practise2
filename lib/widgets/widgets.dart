import 'package:flutter/material.dart';
import 'package:practise2/model/color_const.dart';

class cont1 extends StatelessWidget {
  final String txt;
  final Color clr;
  cont1({
    Key? key,
    required this.txt,
    required this.clr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: clr,
        border: Border.all(color: Appcolor.cnColor, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.copy,
            color: Colors.white,
          ),
          Text(
            txt,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
