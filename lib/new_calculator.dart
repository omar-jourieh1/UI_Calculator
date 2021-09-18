import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'shared/compoments.dart';

class new_calculator extends StatefulWidget {
  new_calculator({Key? key}) : super(key: key);

  @override
  _new_calculatorState createState() => _new_calculatorState();
}

class _new_calculatorState extends State<new_calculator> {
  String name = '1';
  Color colorofapp = HexColor('ffb1c2');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorofapp,
        body: SafeArea(
          child: Column(children: [
            Stack(
              children: [
                screen(name),
                Notich(
                    text: 'Calculator',
                    width: 100,
                    height: 20,
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
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      calculatorRowButtons(
                          buttonNameColumnOne: 'AC',
                          buttonNameColumnTwo: 'Def',
                          buttonNameColumnThree: '%',
                          buttonNameColumnFour: '/'),
                      calculatorRowButtons(
                          buttonNameColumnOne: '7',
                          buttonNameColumnTwo: '8',
                          buttonNameColumnThree: '9',
                          buttonNameColumnFour: 'x'),
                      calculatorRowButtons(
                          buttonNameColumnOne: '4',
                          buttonNameColumnTwo: '5',
                          buttonNameColumnThree: '6',
                          buttonNameColumnFour: '+'),
                      calculatorRowButtons(
                          buttonNameColumnOne: '1',
                          buttonNameColumnTwo: '2',
                          buttonNameColumnThree: '3',
                          buttonNameColumnFour: '-'),
                      calculatorRowButtons(
                          buttonNameColumnOne: '.',
                          buttonNameColumnTwo: '0',
                          buttonNameColumnThree: '()',
                          buttonNameColumnFour: '='),
                    ],
                  ),
                ),
                NotichButton(
                    onpresse: () {
                      setState(() {
                        colorofapp = HexColor('8d303b');
                      });
                    },
                    text: '^',
                    width: 20,
                    height: 35,
                    textstyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: HexColor('da829b').withOpacity(0.9))),
              ]),
            )
          ]),
        ));
  }
}
