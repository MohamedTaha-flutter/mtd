import 'package:flutter/material.dart';
import 'package:mtb/core/constant/colors_style.dart';
import 'package:mtb/core/constant/fontStyle.dart';

class Themes {
  static ThemeData themeData = ThemeData(
    //main colors
    primaryColor: AppColor.mainColor,
    primaryColorLight: AppColor.gray,
    primaryColorDark: AppColor.mainColor,
    disabledColor: AppColor.gray,
    splashColor: AppColor.mainColor,
    //cardView theme
    cardTheme: CardTheme(
      color: Colors.white,
      elevation: 4,
      shadowColor: AppColor.gray,
    ),
    //app bar theme
    appBarTheme: AppBarTheme(
      color: AppColor.mainColor,
      centerTitle: true,
      titleTextStyle: AppText.semiBold16.copyWith(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: AppText.mediumText16.copyWith(
          color: Colors.white,
          fontSize: 17,
        ),
        backgroundColor: AppColor.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(8),
      hintStyle: AppText.smallText14,
      labelStyle : AppText.smallText14,
      errorStyle: AppText.smallText14.copyWith(color: Colors.red),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.mainColor,width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),

        ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColor.gray,width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),

      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color:Colors.red,width: 1),
        borderRadius: BorderRadius.all(Radius.circular(8)),

      ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.mainColor,width: 1),
          borderRadius: BorderRadius.all(Radius.circular(8)),

        ),
    )
  );
}
