import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

import './home.dart';
class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
  }

  class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 10);
      return Timer(duration, () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) {
            return HomePage();
          }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
         child: Image.asset(
          "assets/dart.png",
            width: 400.0,
            height: 400.0,
          ),
        ),
      );
    }
  }

