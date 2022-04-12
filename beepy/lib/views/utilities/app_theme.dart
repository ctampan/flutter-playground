import 'package:flutter/material.dart';

class AppTheme {
  static TextTheme _textTheme(Color fontColor) {
    return TextTheme(
        headline3: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 39,
            color: fontColor),
        headline4: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 24,
            color: fontColor),
        headline6: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: fontColor),
        subtitle1: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 19,
            color: fontColor),
        bodyText1: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: fontColor),
        button: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.white));
  }

  static final lightTheme = ThemeData(
      textTheme: _textTheme(Colors.black),
      backgroundColor: Colors.white,
      primaryColor: const Color(0xFFFA7F35),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }));

  static final darkTheme = ThemeData(
      textTheme: _textTheme(Colors.white),
      backgroundColor: const Color(0xFF191D21),
      primaryColor: const Color(0xFF1814E4),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }));
}
