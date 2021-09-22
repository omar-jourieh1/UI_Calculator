import 'package:asps_second_project/new_calculator_dark.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'shared/compoments.dart';

class new_calculator extends StatefulWidget {
  new_calculator({Key? key}) : super(key: key);

  @override
  _new_calculatorState createState() => _new_calculatorState();
}

class _new_calculatorState extends State<new_calculator> {
  String text = '1';
  late int firstNum;
  late int seconNum;
  late String history='';
  late String textToDisplay='';
  late String res;
  late String operation;

  void btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      seconNum = 0;
      res = '';
      history = '';
    } else if (btnVal == '/' ||
        btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x') {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
      history=firstNum.toString()+operation.toString();
       textToDisplay=firstNum.toString()+operation.toString();
    } else if (btnVal == '=') {
      seconNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + seconNum).toString();
        history =
            firstNum.toString() + operation.toString() + seconNum.toString();
      }
      if (operation == '-') {
        res = (firstNum - seconNum).toString();
        history =
            firstNum.toString() + operation.toString() + seconNum.toString();
      }
      if (operation == '/') {
        res = (firstNum / seconNum).toString();
        history =
            firstNum.toString() + operation.toString() + seconNum.toString();
      }
      if (operation == 'x') {
        res = (firstNum * seconNum).toString();
        history =
            firstNum.toString() + operation.toString() + seconNum.toString();
      }
       if (operation == '%') {
        res = (firstNum % seconNum).toString();
        history =
            firstNum.toString() + operation.toString() + seconNum.toString();
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
    return Scaffold(
        backgroundColor: HexColor('ffbaca'),
        body: SingleChildScrollView(
            child: SafeArea(
          child: Column(children: [
            Stack(
              children: [
                screen(history: history, textToDisplay: textToDisplay),
                Notich(
                    text: 'Calculator',
                    width: 100,
                    height: 25,
                    textstyle:
                        TextStyle(color: HexColor('da829b').withOpacity(0.9))),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 0.7),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [HexColor('ffbaca'), HexColor('ffced7')],
                ),
                color: HexColor('ffcfdb'),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: SingleChildScrollView(
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        calculatorRowButtons(
                            funtion: btnOnClick,
                            buttonNameColumnOne: 'AC',
                            buttonNameColumnTwo: 'Def',
                            buttonNameColumnThree: '%',
                            buttonNameColumnFour: '/'),
                        calculatorRowButtons(
                            funtion: btnOnClick,
                            buttonNameColumnOne: '7',
                            buttonNameColumnTwo: '8',
                            buttonNameColumnThree: '9',
                            buttonNameColumnFour: 'x'),
                        calculatorRowButtons(
                            funtion:btnOnClick,
                            buttonNameColumnOne: '4',
                            buttonNameColumnTwo: '5',
                            buttonNameColumnThree: '6',
                            buttonNameColumnFour: '+'),
                        calculatorRowButtons(
                            funtion: btnOnClick,
                            buttonNameColumnOne: '1',
                            buttonNameColumnTwo: '2',
                            buttonNameColumnThree: '3',
                            buttonNameColumnFour: '-'),
                        calculatorRowButtons(
                            funtion:btnOnClick,
                            buttonNameColumnOne: '.',
                            buttonNameColumnTwo: '0',
                            buttonNameColumnThree: '()',
                            buttonNameColumnFour: '='),
                      ],
                    ),
                  ),
                  NotichButton(
                      onpresse: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => new_calculator_dark()));
                      },
                      text: '^',
                      width: 20,
                      height: 35,
                      textstyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: HexColor('da829b').withOpacity(0.9))),
                ]),
              ),
            )
          ]),
        )));
  }
}
