import 'package:flutter/material.dart';
abstract class Style {
  Style._();



  // ------------------------  Color  --------------------------- //

static const blackColor = Colors.black;
static const mainColor = Color(0xff152272);
static const loadingGreyColor = Color(0xffB4B0CF);
static const whiteColor = Colors.white;
static const loginBcColor = Color(0xffF6F4FA);



// -------------------------------  text style  ----------------------- //

  static textStyleBoldOnboarding(
      {double size = 22, Color textColor = Style.blackColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );
  static textStyleNormOnboarding(
      {double size = 13, Color textColor = Style.blackColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w400,
      );
  static textStyleBoldMainColor(
      {double size = 18, Color textColor = Style.mainColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );

  static textStyleBoldGreyColor(
      {double size = 18, Color textColor = Style.loadingGreyColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );
  static textStyleButtonWhite(
      {double size = 15, Color textColor = Style.mainColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w500,
      );









}