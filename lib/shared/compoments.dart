import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget Notich(
        {required String text,
        required double width,
        required double height,
        required TextStyle textstyle}) =>
    Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.5),
            color: HexColor('ffffff').withOpacity(0.7),
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(text, textAlign: TextAlign.center, style: textstyle),
        ),
      ),
    );

Widget NotichButton(
        {required String text,
        required double width,
        required double height,
        required TextStyle textstyle,
  required Function onpresse, }) =>
    Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 0.5),
            color: HexColor('ffffff').withOpacity(0.7),
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10))),
        child: TextButton(
          onPressed: () {
            onpresse();
          },
          child: Column(
            children: [
              Text(text, textAlign: TextAlign.center, style: textstyle),
            ],
          ),
        ),
      ),
    );
Widget screen(String number) => Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [HexColor('ffa0b4').withOpacity(0.5), HexColor('ffb1c2')],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              '1,000+1.001',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '$number',
              style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );

Widget calculatorRowButtons({
  required String buttonNameColumnOne,
  required String buttonNameColumnTwo,
  required String buttonNameColumnThree,
  required String buttonNameColumnFour,
  Function? funtion,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 73,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnOne);
              },
              child: Text(
                '$buttonNameColumnOne',
                style: TextStyle(fontSize: 25, color: HexColor('ec6a8e')),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(),
            height: 73,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnTwo);
              },
              child: Text(
                '$buttonNameColumnTwo',
                style: TextStyle(fontSize: 25, color: HexColor('ec6a8e')),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(),
            height: 73,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnThree);
              },
              child: Text(
                '$buttonNameColumnThree',
                style: TextStyle(fontSize: 25, color: HexColor('ec6a8e')),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(),
            height: 73,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnFour);
              },
              child: Text(
                '$buttonNameColumnFour',
                style: TextStyle(fontSize: 25, color: HexColor('ec6a8e')),
              ),
            )),
      ],
    );
