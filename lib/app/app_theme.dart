import 'package:exachanger/app/app_colors.dart';
import 'package:exachanger/app/app_text_styles.dart';
import 'package:exachanger/app/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        focusColor: AppColors.primaryLight,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.primaryLight),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide(color: AppColors.error),
        ),
        // text
        hintStyle: AppTextStyles.bodySmall,
        labelStyle: AppTextStyles.bodySmall,
      ),
      brightness: Brightness.light,
      primaryColor: AppColors.primaryLight,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryLight,
        secondary: AppColors.secondaryLight,
        error: AppColors.error,
        surface: AppColors.white,
      ),
      scaffoldBackgroundColor: AppColors.white,
      primaryTextTheme: AppTextTheme.lightTextTheme,
      textTheme: AppTextTheme.lightTextTheme,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.white,
        titleTextStyle: AppTextStyles.titleMedium.copyWith(color: Colors.black),
        surfaceTintColor: Colors.white,
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        shadowColor: AppColors.bottomSheetShadowLight,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: Colors.white,
        shadowColor: AppColors.drawerShadowLight,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
      ),
    );
  }

  // static ThemeData get darkTheme {
  //   return ThemeData(
  //       brightness: Brightness.dark,
  //       primaryColor: AppColors.primaryDark,
  //       colorScheme: const ColorScheme.dark(
  //           primary: AppColors.primaryDark,
  //           secondary: AppColors.secondaryDark,
  //           error: AppColors.error,
  //           background: AppColors.backgroundDark),
  //       scaffoldBackgroundColor: AppColors.backgroundDark,
  //       primaryTextTheme: AppTextTheme.darkTextTheme,
  //       textTheme: AppTextTheme.darkTextTheme,
  //       appBarTheme: AppBarTheme(
  //           elevation: 0,

  //           backgroundColor: AppColors.backgroundDark,
  //           titleTextStyle: AppTextStyles.titleMedium),
  //       bottomSheetTheme: const BottomSheetThemeData(
  //           backgroundColor: AppColors.bottomSheetDark,
  //           shadowColor: AppColors.bottomSheetShadowDark),
  //       drawerTheme: const DrawerThemeData(
  //           backgroundColor: AppColors.drawerDark,
  //           shadowColor: AppColors.drawerShadowDark),
  //       bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //         backgroundColor: AppColors.backgroundDark,
  //       ));
  // }
}
