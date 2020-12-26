import 'package:flutter/material.dart';
import 'package:sinabung/utils/styles.dart';

class FormItem extends StatelessWidget {
  final String title;
  final Widget child;
  final bool divider;

  FormItem({this.title = '', this.child, this.divider = true});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.title,
          style: TextStyle(color: Styles.accentLightBlue),
        ),
        this.child,
        this.divider ? Divider(color: Colors.black) : Container(),
      ],
    );
  }
}
