import 'package:flutter/material.dart';
import 'package:sinabung/utils/signin.dart';
import 'package:sinabung/views/partials/home_page.dart';
import 'package:sinabung/views/partials/tambah_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  void onTabTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final GoogleAuth auth = ModalRoute.of(context).settings.arguments;
    final List<Widget> _children = [
      HomePage(auth: auth),
      HomePage(),
      TambahPage(auth: auth),
    ];
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FC),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: "Analisis",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: "Tambah",
          ),
        ],
      ),
    );
  }
}
