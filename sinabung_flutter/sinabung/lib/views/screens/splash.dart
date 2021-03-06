import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sinabung/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future checkFirstSeen() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // bool _seen = prefs.getBool(Constants.appPreviouslyRunKey) ?? false;
    bool _seen = false;
    if (_seen) {
      Navigator.of(context).pushReplacementNamed("/auth");
    } else {
      // await prefs.setBool(Constants.appPreviouslyRunKey, true);
      Navigator.of(context).pushReplacementNamed("/onboarding");
    }
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Sinabung",
            style: TextStyle(
              fontSize: 72,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
