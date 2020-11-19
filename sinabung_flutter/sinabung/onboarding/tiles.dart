import 'package:flutter/material.dart';


class OnBoardingTile extends StatelessWidget {
  final String imageAssetPath, title, desc;
  OnBoardingTile({this.imageAssetPath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageAssetPath),
          SizedBox(
            height: 20,
          ), // Padding
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: const Color(0xFFFFFFFF)),
          ),
          SizedBox(
            height: 20,
          ), // Padding
          Text(
            desc,
            style: TextStyle(color: const Color(0xFFFFFFFF)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}