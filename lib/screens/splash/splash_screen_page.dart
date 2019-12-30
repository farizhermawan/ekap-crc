import 'package:customer_response_care/themes/colors.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:customer_response_care/screens/login/login_page.dart';

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
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return LoginPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CommonColors.background_blue,
        body: Center(
          child: Image(
            image: AssetImage('images/logo_crc.png'),
            width: 220,
            height: 280,
          ),
        ));
  }
}
