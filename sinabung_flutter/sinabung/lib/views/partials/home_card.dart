import 'package:flutter/material.dart';

class SinabungHomeCard extends StatelessWidget {
  final Widget child;
  final Color color;

  SinabungHomeCard({this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: this.child,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.all(Radius.circular(4)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0x93, 0x80, 0x80, 0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
          )
        ],
      ),
    );
  }
}
