import 'dart:async';

import 'package:employee/parsing_json.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => ParsingJson())
        )
    );
    super.initState();
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      color:Color(0xff02bb9f),
      child: Center(child: Text('Emplyee Details',
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        color: Colors.black54
      )
      ))
    )
    );
  }
}