import 'package:employee/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: const Color(0xff02bb9f),
      primaryColorDark: const Color(0xff167f67),
      accentColor: const Color(0xff167f67),
    ),
    home: SplashScreen(),
  ));
}

