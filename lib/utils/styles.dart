import 'dart:ui';
import 'package:flutter/material.dart';

class Styles {
  
  static Color appPrimaryColor = Color.fromRGBO(19,24,30,1);
  static Color appAccentColor = Color.fromRGBO(160,41,54,1);
  static Color appCanvasColor = Colors.white;
  static Color appBackground = Color.fromRGBO(139,153,70, 1);
  static Color commonDarkBackground = Color.fromRGBO(160,41,54,1);
  static Color commonDarkCardBackground = Color.fromRGBO(160,41,54,1); // #1e2d3b
  static TextTheme appTextTheme = TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(160,41,54,1)
    ),
    bodyText1: TextStyle(
      color: Colors.black,
    ),
  );
  static TextStyle defaultStyle = TextStyle(
    color: Colors.grey[800],
  );
  static TextStyle h1White = defaultStyle.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 18.0,
    height: 22 / 18,
    color: Colors.white,
  );
  static TextStyle p = defaultStyle.copyWith(
    fontSize: 16.0,
    color: Colors.grey[800],
  );
   static TextStyle pWhite = p.copyWith(
    color: Colors.white,
  );

}
