import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /*1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ),
        /*3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
    ),
  );

  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home),
            Container(
              margin: const EdgeInsets.only(left: 128),
              child: Text(
                'HOME',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite),
            Container(
              margin: const EdgeInsets.only(left: 128),
              child: Text(
                'HOME',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )
      ],
    ),
  );

  Row _buildButtonRow(IconData icon, String label) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon),
        Container(
          margin: const EdgeInsets.only(left: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sinabung',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sinabung'),
        ),
        //body: ,
        bottomNavigationBar: buttonSection
      ),
    );
  }
}
