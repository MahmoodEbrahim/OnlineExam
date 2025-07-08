import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      foregroundColor: Colors.white,
      elevation: 4.0,
      centerTitle: false,
      iconTheme: IconThemeData(
        color: AppColors.blackDark,
      ),
      titleTextStyle: GoogleFonts.roboto(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.roboto(
        color: AppColors.blackPrimary,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.roboto(
        color: AppColors.blackPrimary,
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: GoogleFonts.roboto(
        color: AppColors.blackPrimary,
        fontSize: 16,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.normal,
      ),
      bodyLarge: GoogleFonts.roboto(
        color: AppColors.blackPrimary,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: GoogleFonts.roboto(
        color: AppColors.blackSoft,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: GoogleFonts.roboto(
        color: AppColors.blackSoft,
        fontSize: 10,
        fontWeight: FontWeight.normal,
      ),
      titleLarge: GoogleFonts.roboto(
        color: AppColors.blackPrimary,
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: AppColors.bluePrimary,
      secondary: AppColors.blueAccent,
      surface: Colors.white,
      onPrimary: Colors.white,
      onSecondary: AppColors.blackPrimary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        backgroundColor: AppColors.blueDeep,
        foregroundColor: Colors.white,
        textStyle: GoogleFonts.roboto(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: BorderSide(color: AppColors.blackSoft),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: BorderSide(color: AppColors.blackSoft),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: BorderSide(color: AppColors.blackDark, width: 2.0),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4.0),
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: Colors.red, width: 2.0),
      ),
      labelStyle: GoogleFonts.roboto(
        color: AppColors.blackPrimary,
        fontSize: 16,
      ),
      hintStyle: GoogleFonts.roboto(
        color: AppColors.blackSoft,
        fontSize: 14,
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
    ),
  );
}