<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A package that helps you a make a responsive apps, get the devices sizes by inches.

## Features

ScreenSize.getHeight(context) - returns the device height

ScreenSize.getWidth(context) - returns the device width

ScreenSize.getHeightPercentage(context, double percentage) - gets the device height with the percentage that you need

ScreenSize.getWidthPercentage(context, double percentage) - gets the device height with the percentage that you need

isSmallScreen4Inches(context) - return true if the device is lower than 4 inches

isSmallScreen5Inches(context) - return true if the device is lower than 5 inches

isLarge6Inches(context) - return true if the device is lower6 inches

isLarge6Halfnches()(context) - return true if the device is lower than 6.5 inches

getAllDevicesInchesWidth() - return the width double value for all inchs options, just pass how much % you need for each inch

getAllDevicesInchesHeight() - return the height double value for all inchs options, just pass how much % you need for each inch

## Getting started

Install the package on your pubspec.yaml, after that just call the ScreenSize class and call the static method that it is better for you

## Usage

EXAMPLES - 

HALF DEVICE FOR A CONTAINER:

Container(
    width: ScreenSize.getWidth(context) * 0.2,
    height: ScreenSize.getHeight
)

OR


Container(
    width: ScreenSize.getWidthPercentage(context, 0.2),
    height: ScreenSize.getHeight
)


CHANGE THE SIZE OF SOMETHING WITH THE PACKAGE:

TextStyleParams(
   text: 'exemple',
   fontSize: ScreenSize.isSmallScreen4Inches(context)
                                          ? 8
                                          : 12,
   fontWeight: FontWeight.normal)


MAKE A RESPONSIVE WIDGET FOR ALL DEVICES:

Padding(
   padding: EdgeInsets.only(
   bottom: ScreenSize.getHeight(context) * 0.04,
   right: ScreenSize.getAllDevicesInchesWidth(context, 0.16, 0.15, 0.13, 00.85, 0.080)),
                        child: const Icon(
                          Icons.add,
                          color: Colors.blue,
                        ),
                      );





