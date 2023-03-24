// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/calculator_button.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  _CalculatorAppState createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  late int firstNum;
  late int secondNum;
  late String history = '';
  late String textToDisplay = '';
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+/-') {
      if (textToDisplay[0] != '-') {
        res = '-' + textToDisplay;
      } else {
        res = textToDisplay.substring(1);
      }
    } else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length - 1);
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == 'X') {
        res = (firstNum * secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / secondNum).toString();
        history =
            firstNum.toString() + operation.toString() + secondNum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: Text(
                      history,
                      style: GoogleFonts.rubik(
                          textStyle:
                              TextStyle(fontSize: 24, color: Colors.grey)),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: Align(
                      child: Text(
                        textToDisplay,
                        style: GoogleFonts.rubik(
                            textStyle:
                                TextStyle(fontSize: 48, color: Colors.black)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: 'AC',
                  fillColor: 0xFFA5D6A7,
                  // textColor: Colors.black,
                  textSize: 20, callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'C',
                  fillColor: 0xFF90CAF9,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '<',
                  fillColor: 0xFF90CAF9,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '/',
                  fillColor: 0xFF90CAF9,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '9',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '8',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '7',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: 'X',
                  fillColor: 0xFF90CAF9,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '6',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '5',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '4',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '-',
                  fillColor: 0xFF90CAF9,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '3',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '2',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '1',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '+',
                  fillColor: 0xFF90CAF9,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  text: '+/-',
                  fillColor: 0xFF90CAF9,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '0',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '00',
                  fillColor: 0XFFE0E0E0,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
                CalculatorButton(
                  text: '=',
                  fillColor: 0XFFE1BEE7,
                  // textColor: Colors.black,
                  textSize: 20,
                  callback: btnOnClick,
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
