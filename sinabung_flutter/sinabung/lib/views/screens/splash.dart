import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sinabung/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Future checkFirstSeen() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // bool _seen = prefs.getBool(Constants.appPreviouslyRunKey) ?? false;
    bool _seen = false;
    if (_seen) {
      Navigator.of(context).pushReplacementNamed("/home");
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Sinabung")],
        ),
      ),
    );
  }
}
