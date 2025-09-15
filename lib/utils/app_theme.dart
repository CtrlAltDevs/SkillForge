import 'package:flutter/material.dart';
import 'package:skillforge/utils/app_colors.dart';

class AppTheme {
  static const String fontFamily = 'SpaceGrotesk';

  static ThemeData themeApp() {
    return ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: fontFamily,
      textTheme: TextTheme(),
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 4,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
