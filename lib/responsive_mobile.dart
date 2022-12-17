library responsive_mobile;

import 'package:flutter/material.dart';

class ScreenSize {
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

    static double getHeightPercentage(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.height * percentage;
  }
  

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

   static double getWidthPercentage (BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * percentage;
  }


  static bool isSmallScreen4Inches(BuildContext context) {
    return ScreenSize.getWidth(context) < 321 &&
        ScreenSize.getHeight(context) < 521;
  }

  static bool isSmallScreen5Inches(BuildContext context) {
    return ScreenSize.getWidth(context) < 412 &&
        ScreenSize.getHeight(context) < 684;
  }

  static bool isLarge6inches(BuildContext context) {
    return ScreenSize.getWidth(context) < 433 &&
        ScreenSize.getHeight(context) < 817;
  }

  static bool isLarge6AndHalfinches(BuildContext context) {
    return ScreenSize.getWidth(context) < 415 &&
        ScreenSize.getHeight(context) < 897;
  }



  static double getAllDevicesInchesWidth(
      BuildContext context,
      double percent4inches,
      double percent5inches,
      double percent6inches,
      double percent6Halfinches,
      double percentElse) {
    if (isSmallScreen4Inches(context)) {
      return ScreenSize.getWidth(context) * percent4inches;
    }
    if (isSmallScreen5Inches(context)) {
      return ScreenSize.getWidth(context) * percent5inches;
    }
    if (isLarge6inches(context)) {
      return ScreenSize.getWidth(context) * percent6inches;
    }
    if (isLarge6AndHalfinches(context)) {
      return ScreenSize.getWidth(context) * percent6Halfinches;
    }
    return ScreenSize.getWidth(context) * percentElse;
  }

  static double getAllDevicesInchesHeight(
      BuildContext context,
      double percent4inches,
      double percent5inches,
      double percent6inches,
      double percent6Halfinches,
      double percentElse) {
    if (isSmallScreen4Inches(context)) {
      return ScreenSize.getHeight(context) * percent4inches;
    }
    if (isSmallScreen5Inches(context)) {
      return ScreenSize.getHeight(context) * percent5inches;
    }
    if (isLarge6inches(context)) {
      return ScreenSize.getHeight(context) * percent6inches;
    }
    if (isLarge6AndHalfinches(context)) {
      return ScreenSize.getHeight(context) * percent6inches;
    }
    return ScreenSize.getHeight(context) * percentElse;
  }
}
