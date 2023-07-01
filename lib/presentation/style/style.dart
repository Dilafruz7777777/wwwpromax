import 'package:flutter/material.dart';
abstract class Style {
  Style._();



  // ------------------------  Color  --------------------------- //

static const blackColor = Colors.black;
static const mainColor = Color(0xff152272);
static const loadingGreyColor = Color(0xffB4B0CF);
static const whiteColor = Colors.white;
static const loginBcColor = Color(0xffF6F4FA);
static const textformBorderColor = Color(0xffD7BBE1);
static const textformBackgraundColor = Color(0xffFEFBFF);
static const labelColor = Color(0xffA6A4A4);
static const buttonTextColor = Color(0xff6B5C72);
static const navigationBarColor = Color(0xffFFFDFF);
static const jobColor = Color(0xff4D7EFA);
static const incomeColor = Color(0xff14C163);


// -------------------------------  text style  ----------------------- //

  static textStylelittleOnboarding(
      {double size = 10, Color textColor = Style.blackColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );
  static jobtextStyle(
      {double size = 12, Color textColor = Style.jobColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );


  static incomeTextStyle(
      {double size = 11, Color textColor = Style.incomeColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );

  static buttonTextStyle(
      {double size = 12, Color textColor = Style.buttonTextColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );


  static textformLabelStyle(
      {double size = 12, Color textColor = Style.labelColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );

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
  static homePageTextStyle(
      {double size = 11, Color textColor = Style.blackColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );
  static homeTitleTextStyle(
      {double size = 10, Color textColor = Style.blackColor}) =>
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
  static HometextStyleBoldGreyColor1(
      {double size = 13, Color textColor = Style.loadingGreyColor}) =>
      TextStyle(
        fontSize: size,
        color: textColor,
        fontWeight: FontWeight.w700,
      );

  static HometextStyleBoldGreyColor(
      {double size = 15, Color textColor = Style.loadingGreyColor}) =>
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


//  ----------------------------  gradient color  ---------------------------------  //

  static final onboardingImageGradient4 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.blueGrey.shade200,
      Colors.indigo.shade500,
    ],
  );






}