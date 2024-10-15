import 'package:flutter/material.dart';

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
    return MaterialApp(
        theme: Themes.themeData,
        debugShowCheckedModeBanner: false,
        home: SplashView());
  }
}
