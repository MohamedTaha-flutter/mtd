import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constant/theme.dart';
import '../feature/splash/presentation/view/splash_view.dart';

class MyApp extends StatefulWidget {
  const MyApp._internal();

  factory MyApp() => MyApp._internal();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: Themes.themeData,
          debugShowCheckedModeBanner: false,
          home: SplashView(),
        );
      },
    );
  }
}
