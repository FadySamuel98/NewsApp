
import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme{

  static Color primaryLightColor = Color(0xff39A552);
  static Color redColor = Color(0xffC91C22);
  static Color blueColor = Color(0xff003E90);
  static Color yellowColor = Color(0xffF2D352);
  static Color purpleColor = Color(0xffED1E79);
  static Color brownColor = Color(0xffCF7E48);
  static Color lightBlueColor = Color(0xff4882CF);
  static Color whiteColor = Color(0xffffffff);
  static Color blackColor = Color(0xff303030);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryLightColor,
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25)))),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 40 , fontWeight: FontWeight.bold , color: whiteColor
      ),
      titleMedium: TextStyle(
          fontSize: 22 , fontWeight: FontWeight.bold , color: whiteColor
      ),
      titleSmall: TextStyle(
          fontSize: 20 , fontWeight: FontWeight.bold , color: whiteColor
      )
    )
  );



}