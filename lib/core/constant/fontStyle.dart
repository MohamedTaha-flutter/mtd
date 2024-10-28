import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mtb/core/constant/colors_style.dart';

class FontFamily {
  static String fontFamily = "AppFont";
}

class AppText {
  static TextStyle semiBold16 = TextStyle(
    fontFamily: FontFamily.fontFamily,
    fontSize: 16.sp,  // Added .sp for responsive font size
    fontWeight: FontWeight.w400,
    color: AppColor.gray,
  );

  static TextStyle smallText14 = TextStyle(
    fontFamily: FontFamily.fontFamily,
    fontSize: 14.sp,  // Added .sp
    fontWeight: FontWeight.w300,
    color: AppColor.gray,
  );

  static TextStyle mediumText16 = TextStyle(
    fontFamily: FontFamily.fontFamily,
    fontSize: 16.sp,  // Added .sp
    fontWeight: FontWeight.w500,
    color: AppColor.mainColor,
  );

  static TextStyle text11 = TextStyle(
    fontFamily: FontFamily.fontFamily,
    fontSize: 11.sp,  // Added .sp
    fontWeight: FontWeight.w500,
    color: AppColor.lightGray,
  );

  static TextStyle text12 = TextStyle(
    fontFamily: FontFamily.fontFamily,
    fontSize: 12.sp,  // Added .sp
    fontWeight: FontWeight.bold,
    color: AppColor.mainColor,
  );

  static TextStyle text18 = TextStyle(
    fontFamily: FontFamily.fontFamily,
    fontSize: 18.sp,  // Added .sp
    fontWeight: FontWeight.w600,
    color: AppColor.mainColor,
  );
}
