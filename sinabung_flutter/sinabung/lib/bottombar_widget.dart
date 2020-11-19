import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home_sharp),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.insert_chart_sharp),
            label: 'Analisis'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_sharp),
            label: 'Tambah'
          ),
            BottomNavigationBarItem(
              icon: new Icon(Icons.restore_sharp),
            label: 'History'
            )
        ],
      ),
    );
  }
}