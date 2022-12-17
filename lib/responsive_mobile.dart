library responsive_mobile;

import 'package:flutter/material.dart';

class ScreenSize {
  static double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
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
      double porcent4inches,
      double porcent5inches,
      double porcent6inches,
      double porcent6Halfinches,
      double porcentElse) {
    if (isSmallScreen4Inches(context)) {
      return ScreenSize.getWidth(context) * porcent4inches;
    }
    if (isSmallScreen5Inches(context)) {
      return ScreenSize.getWidth(context) * porcent5inches;
    }
    if (isLarge6inches(context)) {
      return ScreenSize.getWidth(context) * porcent6inches;
    }
    if (isLarge6AndHalfinches(context)) {
      return ScreenSize.getWidth(context) * porcent6Halfinches;
    }
    return ScreenSize.getWidth(context) * porcentElse;
  }

  static double getAllDevicesInchesHeight(
      BuildContext context,
      double porcent4inches,
      double porcent5inches,
      double porcent6inches,
      double porcent6Halfinches,
      double porcentElse) {
    if (isSmallScreen4Inches(context)) {
      return ScreenSize.getHeight(context) * porcent4inches;
    }
    if (isSmallScreen5Inches(context)) {
      return ScreenSize.getHeight(context) * porcent5inches;
    }
    if (isLarge6inches(context)) {
      return ScreenSize.getHeight(context) * porcent6inches;
    }
    if (isLarge6AndHalfinches(context)) {
      return ScreenSize.getHeight(context) * porcent6inches;
    }
    return ScreenSize.getHeight(context) * porcentElse;
  }
}
