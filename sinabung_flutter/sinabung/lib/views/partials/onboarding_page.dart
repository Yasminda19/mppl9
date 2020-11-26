import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final String imgPath, title, body;

  OnBoardingPage({this.imgPath, this.title, this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(72, 36, 72, 36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFF202944),
            ),
          ),
          SizedBox(height: 30),
          Image.asset(imgPath),
          SizedBox(height: 30),
          Text(
            body,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF8E9AA7),
            ),
          ),
        ],
      ),
    );
  }
}
