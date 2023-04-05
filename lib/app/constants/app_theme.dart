import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_settings.dart';

class AppColors {
  // Màu chính
  static const Color COLOR_PRIMARY = Color(0xFF0870B8);
  static const Color COLOR_ACCENT = Color(0xFF0870B8);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.COLOR_PRIMARY,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColors.COLOR_ACCENT
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0)
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))
                ),
                backgroundColor: MaterialStateProperty.all<Color>(AppColors.COLOR_ACCENT)
            )
        ),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none
            ),
            filled: true,
            fillColor: Colors.grey.withOpacity(0.1)
        )
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(

      brightness: Brightness.dark,
      switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all<Color>(Colors.grey),
        thumbColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),borderSide: BorderSide.none
          ),
          filled: true,
          fillColor: Colors.grey.withOpacity(0.1)
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0)
              ),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)
                  )
              ),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              overlayColor: MaterialStateProperty.all<Color>(Colors.black26)
          )
      ),
    );
  }
}
