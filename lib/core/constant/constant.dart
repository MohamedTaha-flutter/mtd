import 'package:flutter/material.dart';

const Image authImage =
    Image(image: AssetImage("assets/images/FINAL-LOGO.png"));

goTo(context, WidgetBuilder view) {
  return Navigator.push(context, MaterialPageRoute(builder: view));
}

goToAndReplacement(context, WidgetBuilder view) {
  return Navigator.pushReplacement(context, MaterialPageRoute(builder: view));
}
