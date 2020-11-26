import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final int currentIndex;
  final double total;

  Indicator({this.currentIndex, this.total});

  @override
  Widget build(BuildContext context) {
    const Color _kBackgroundColor = Color(0xE7F9FF);
    const Color _kIndicatorColor = Color(0xB6E5F1);
    return Container(
      width: 70.0,
      height: 11.0,
      decoration: BoxDecoration(
        color: _kBackgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Row(
        children: [
          SizedBox(width: total / currentIndex * 70.0),
          Container(
            width: 70.0 / currentIndex,
            decoration: BoxDecoration(
              color: _kIndicatorColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          )
        ],
      ),
    );
  }
}
