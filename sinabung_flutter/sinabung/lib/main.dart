import 'package:flutter/material.dart';
import 'card_widget.dart';
import 'bottombar_widget.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomBar()
    );
  }
}




