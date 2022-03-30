import 'package:flutter/material.dart';

import '../model/color_const.dart';

class cont2 extends StatelessWidget {
  final String txt;
  final double radiussss;
  const cont2({
    Key? key, required this.txt, required this.radiussss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Appcolor.cnColor, width: 2),
        borderRadius: BorderRadius.circular(radiussss),
      ),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: Appcolor.cnColor,
        ),
      ),
    );
  }
}
