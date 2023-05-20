import 'package:flutter/material.dart';
abstract class Style {
  Style._();



  // ------------------------  Color  --------------------------- //

static const blackColor = Colors.black;
static const loadingBlueColor = Color(0xff152272);
static const loadingGreyColor = Color(0xffB4B0CF);



// -------------------------------  text style  ----------------------- //

  static textStyleBoldOnboarding(
      {double size = 20, Color textColor = Style.blackColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );


  static textStyleButtonWhite(
      {double size = 15, Color textColor = Style.loadingBlueColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w500,
      );









}