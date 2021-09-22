import 'dart:ui';

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

Widget NotichButton({
  required String text,
  required double width,
  required double height,
  required TextStyle textstyle,
  required Function onpresse,
}) =>
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
Widget screen({required String history,required String textToDisplay}) => Container(
      height: 276,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [HexColor('ffa0b4').withOpacity(0.5), HexColor('ffb1c2')],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 55.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              history,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              textToDisplay,
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
            height: 77,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnOne);
              },
              child: Text(
                buttonNameColumnOne,
                style: TextStyle(fontSize: 25, color: HexColor('#d7768c')),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(),
            height: 77,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnTwo);
              },
              child: Text(
                '$buttonNameColumnTwo',
                style: TextStyle(fontSize: 25, color: HexColor('#d7768c')),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(),
            height: 77,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnThree);
              },
              child: Text(
                '$buttonNameColumnThree',
                style: TextStyle(fontSize: 25, color: HexColor('#d7768c')),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(),
            height: 78,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnFour);
              },
              child: Text(
                '$buttonNameColumnFour',
                style: TextStyle(fontSize: 25, color: HexColor('#fb586d')),
              ),
            )),
      ],
    );

Widget calculatorRowButtons2({
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
            height: 78,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnOne);
              },
              child: Text(
                buttonNameColumnOne,
                style: TextStyle(fontSize: 25, color: HexColor('#d7768c')),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(),
            height: 78,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnTwo);
              },
              child: Text(
                '$buttonNameColumnTwo',
                style: TextStyle(fontSize: 25, color: HexColor('#d7768c')),
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
                buttonNameColumnThree,
                style: TextStyle(fontSize: 25, color: HexColor('#d7768c')),
              ),
            )),
        SizedBox(
          width: 10,
        ),
        Container(
            decoration: BoxDecoration(),
            height: 78,
            width: 70,
            child: TextButton(
              onPressed: () {
                funtion!(buttonNameColumnFour);
              },
              child: Text(
                buttonNameColumnFour,
                style: TextStyle(fontSize: 25, color: HexColor('#fb586d')),
              ),
            )),
      ],
    );
Widget Notich2(
        {required String text,
        required double width,
        required double height,
        required TextStyle textstyle}) =>
    Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: HexColor('#4b161d'),
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(5),
                bottomLeft: Radius.circular(5))),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Text(text, textAlign: TextAlign.center, style: textstyle),
        ),
      ),
    );

Widget NotichButton2({
  required String text,
  required double width,
  required double height,
  required TextStyle textstyle,
  required Function onpresse,
}) =>
    Center(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: HexColor('#270d11').withOpacity(0.7),
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
Widget screen2({required String history,required String textToDisplay}) => Container(
      color: HexColor('#8b303f'),
      height: 276,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 55.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              history,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              textToDisplay,
              style: const TextStyle(
                  color: Colors.white54,
                  fontSize: 35,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
