import 'package:flutter/material.dart';
import './splash.dart';
import 'dart:async';
import './home.dart';
import 'details.dart';

//void main() {
//  runApp(MaterialApp(
//    debugShowCheckedModeBanner: false,
//    title: "Splash",
//    home: SplashScreenPage(),
//
//  ));
//}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Splash",
      home: SplashScreenPage(),
    );
  }
}
// First screen --- Splash Screen Page
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
    var duration = const Duration(seconds: 5);
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
          "assets/jj.png",
          width: 400.0,
          height: 400.0,
        ),
      ),
    );
  }
}
// Home Page
