
import 'package:flutter/material.dart';
import 'package:mtb/core/constant/colors_style.dart';

class FontFamily {
  static String fontFamily = "AppFont" ;
}

class AppText {
  static TextStyle semiBold16 = TextStyle(
    fontFamily: FontFamily.fontFamily ,
    fontSize: 16,
    fontWeight: FontWeight.w400 ,
    color: AppColor.gray
  );
  static TextStyle smallText14  = TextStyle(
    fontFamily: FontFamily.fontFamily ,
    fontSize: 14,
    fontWeight: FontWeight.w300 ,
    color: AppColor.gray
  );
  static TextStyle mediumText16  = TextStyle(
    fontFamily: FontFamily.fontFamily ,
    fontSize: 16,
    fontWeight: FontWeight.w500 ,
    color: AppColor.mainColor,
  );
  static TextStyle text11  = TextStyle(
    fontFamily: FontFamily.fontFamily ,
    fontSize: 11,
    fontWeight: FontWeight.w500 ,
    color: AppColor.lightGray,
  );
  static TextStyle text12  = TextStyle(
    fontFamily: FontFamily.fontFamily ,
    fontSize: 12,
    fontWeight: FontWeight.bold ,
    color: AppColor.mainColor,
  );
  static TextStyle text18  = TextStyle(
    fontFamily: FontFamily.fontFamily ,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColor.mainColor,
  );
}