import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/color.dart';



class Themes {
  static final light = ThemeData(
      backgroundColor: Colors.white,
      primaryColor: primaryClr,
      brightness: Brightness.light);

  static final dark = ThemeData(
      backgroundColor: darkGreyClr,
      primaryColor: darkGreyClr,
      brightness: Brightness.dark);
}


TextStyle get titleLogoStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode ? Colors.grey : Colors.grey));
}

TextStyle get snackBarStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.black : CupertinoColors.white));
}

//heading

TextStyle get headingStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get headingStyleBold {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

//subheading

TextStyle get subHeadingStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get subHeadingStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get titleStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get titleStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get subTitleStyleBold {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get commonSnackBarStyleBold {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.white));
}

TextStyle get buttonStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.white));
}



TextStyle get buttonStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.white));
}

TextStyle get paragraphStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get paragraphStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get semiParagraphStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get timeStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Get.isDarkMode ? CupertinoColors.black : CupertinoColors.black));
}

TextStyle get timeStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14, color: Get.isDarkMode ? CupertinoColors.black : CupertinoColors.black));
}

TextStyle get notificationStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12, color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get modeStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.black : CupertinoColors.white));
}

TextStyle get searchStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.black : CupertinoColors.black));
}


TextStyle get subTotalClosedTitleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(

          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? CupertinoColors.activeGreen : CupertinoColors.activeGreen));
}

TextStyle get subTotalPeriodTitleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(

          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? CupertinoColors.activeOrange : CupertinoColors.activeOrange));
}


TextStyle get subTotalOpeningTitleStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(

          fontWeight: FontWeight.w600,
          color: Get.isDarkMode ? CupertinoColors.activeOrange : CupertinoColors.activeOrange));
}

TextStyle get priceTitleStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.lineThrough,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.systemRed : CupertinoColors.systemRed));
}


TextStyle get alertTitleStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 16,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.systemRed : CupertinoColors.systemRed));
}


TextStyle get bookPriceTitleStyle { 
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.lineThrough,
          color: Get.isDarkMode ? CupertinoColors.systemRed : CupertinoColors.systemRed));
}



TextStyle get particularSize {
  return GoogleFonts.lato(
      textStyle: TextStyle(

decoration: TextDecoration.underline,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.systemGreen : CupertinoColors.systemBlue) );
}

TextStyle get bookHeadingStyleBold {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontWeight: FontWeight.w600,
          decoration: TextDecoration.underline,
          color: Get.isDarkMode ? CupertinoColors.white : CupertinoColors.black));
}

TextStyle get bookNameTitleStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.systemGreen : CupertinoColors.activeBlue));
}

TextStyle get bookNotOrderPrice {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.systemGreen : CupertinoColors.activeBlue));
}


TextStyle get websiteLink {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
          fontSize: 12,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.normal,
          color: Get.isDarkMode ? CupertinoColors.systemBlue : CupertinoColors.systemBlue));
}



