import 'package:flutter/material.dart';

class AppTheme {
  static const String fontFamily = 'SpaceGrotesk-Regular';

  static ThemeData lightTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: fontFamily,
      textTheme: TextTheme(),
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(backgroundColor: Colors.blue, elevation: 4),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
