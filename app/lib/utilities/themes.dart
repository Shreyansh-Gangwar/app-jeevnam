import 'package:app/utilities/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: AppColor.brand500,
        fontFamily: GoogleFonts.gruppo().fontFamily,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            //page title
            fontSize: 32,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = .5
              ..color = AppColor.neutral900,
          ),
          titleMedium: TextStyle(
            //page title
            fontSize: 32,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = .5
              ..color = AppColor.neutral100,
          ),
          labelLarge: TextStyle(
            //button
            fontSize: 24,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = .5
              ..color = Colors.white,
          ),
          labelMedium: TextStyle(
            //button white
            fontSize: 24,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = .5
              ..color = AppColor.neutral900,
          ),
          headlineLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = .5
              ..color = AppColor.neutral900,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = .5
              ..color = AppColor.neutral900,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = .3
              ..color = AppColor.neutral900,
          ),
          bodyMedium: const TextStyle(
            fontSize: 18,
          ),
          bodySmall: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = .3
              ..color = AppColor.neutral900,
          ),
        ),
      );
}
