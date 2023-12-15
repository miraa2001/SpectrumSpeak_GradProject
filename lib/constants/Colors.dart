import 'package:flutter/material.dart';
const Color kPrimary = Color(0xffE8E5E0);
const Color tdPurple = Color(0xffFFC40C);//#F6EE04
const Color ktextColor= Color(0xff0E5F88);
const Color ktextfieldColor=Color(0xffffffff);
Color tdTextFieldBlue = Color.fromARGB(
  ktextColor.alpha,  // Keep the alpha channel the same
  ktextColor.red ~/ 2, // Reduce the red component by half
  ktextColor.green ~/ 2, // Reduce the green component by half
  ktextColor.blue ~/ 2, // Reduce the blue component by half
);
const Color tdPlaceHolder = Color.fromRGBO(213, 213, 213, 1.0);
const Color tdVideoBG = Color.fromRGBO(255, 255, 255, 1.0);

const Color kBlue= Color(0xff04b5e4);
const Color kRed= Color(0xffE61B23);
const Color kYellow=Color(0xffFFC40C);//#F6EE04
const Color kGreen=Color(0xff00A550);