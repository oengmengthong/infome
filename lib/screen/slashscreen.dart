import 'package:flutter/material.dart';
import 'package:info_me/screen/login.dart';
import 'package:splashscreen/splashscreen.dart';

//********************************************************
// class for screen flash screen for loading style
// you can add function run when launch app in initstate function
//********************************************************

class SplashScreenApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AfterSplashScreen();
}

class AfterSplashScreen extends State<SplashScreenApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SplashScreen(
    seconds: 3,
    navigateAfterSeconds: LogInScreen(),
    backgroundColor: Colors.teal,
    photoSize: 80,
    image: Image.asset('images/logosplashscreen@3x.png'),
    loaderColor: Colors.white,
  );
}
