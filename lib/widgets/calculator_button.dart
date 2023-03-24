// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  //final textColor;
  final double textSize;
  final Function callback;
  // const CalculatorButton({ required this.text}

  // )

  const CalculatorButton(
      {Key? key,
      required this.text,
      required this.fillColor,
      //required this.textColor,
      required this.textSize,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        height: 70,
        width: 70,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Color(fillColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            onPressed: () => callback(text),
            child: Text(
              text,
              style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: textSize,
              )),
            )),
      ),
    );
  }
}
