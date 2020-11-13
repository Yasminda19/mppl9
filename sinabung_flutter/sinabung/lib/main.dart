import 'package:flutter/material.dart';
import 'package:sinabung/Screens/onboardingScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sinabung',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
