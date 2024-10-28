import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtb/core/constant/colors_style.dart';
import 'package:mtb/core/constant/fontStyle.dart';

class Themes {
  static ThemeData themeData = ThemeData(
    // Main colors
    primaryColor: AppColor.mainColor,
    primaryColorLight: AppColor.gray,
    primaryColorDark: AppColor.mainColor,
    disabledColor: AppColor.gray,
    splashColor: AppColor.mainColor,

    // Card view theme
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 4.h, // Responsive elevation
      shadowColor: AppColor.gray,
    ),

    // App bar theme
    appBarTheme: AppBarTheme(
      color: AppColor.mainColor,
      centerTitle: true,
      titleTextStyle: AppText.semiBold16.copyWith(color: Colors.white),
    ),

    // Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: AppText.mediumText16.copyWith(
          color: Colors.white,
          fontSize: 17.sp, // Responsive font size
        ),
        backgroundColor: AppColor.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r), // Responsive border radius
        ),
      ),
    ),

    // Input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(8.w), // Responsive padding
      hintStyle: AppText.smallText14,
      labelStyle: AppText.smallText14,
      errorStyle: AppText.smallText14.copyWith(color: Colors.red),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.gray, width: 1.w), // Responsive border width
        borderRadius: BorderRadius.all(Radius.circular(8.r)), // Responsive radius
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.mainColor, width: 1.w),
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1.w),
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.mainColor, width: 1.w),
        borderRadius: BorderRadius.all(Radius.circular(8.r)),
      ),
    ),
  );
}
