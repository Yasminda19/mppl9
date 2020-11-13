import 'package:flutter/material.dart';
import 'package:sinabung/Screens/onboardingScreen.dart';

void main() => runApp(MyApp());

<<<<<<< HEAD
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sinabung',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
=======
class MyBottomBar extends StatefulWidget {
  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class MyApp extends StatelessWidget {

  Widget mainCards = ListView(
    children:
    const <Widget>[
      Card(
        child: ListTile(
          title: Text('Pengeluaran Bulan Ini'),
          subtitle: Text.rich(
            TextSpan( // default text style
              children: <TextSpan>[
                TextSpan(text: 'Rp.1.800.500', style: TextStyle(
                    fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black)
                ),
              ],
            ),
          ),
        ),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.local_atm),
          title: Text('Pemasukkan'),
          trailing: Text.rich(
            TextSpan( // default text style
              children: <TextSpan>[
                TextSpan(text: 'Rp.800.500', style: TextStyle(
                  color: Colors.black)
                ),
              ],
            ),
          ),
        ),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.account_balance_wallet),
          title: Text('Net'),
          trailing: Text.rich(
            TextSpan( // default text style
              children: <TextSpan>[
                TextSpan(text: 'Rp.650.000', style: TextStyle(
                    color: Colors.black)
                ),
              ],
            ),
          ),
        ),
      ),
      Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text('Tabungan'),
        ),
      )
    ],
  );

  Widget buttonSection = Container(
    margin: const EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.insert_chart_sharp),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_box_sharp),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restore),
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
        body: mainCards,
        bottomNavigationBar: BottomAppBar(
          child: buttonSection,
        )
      ),
>>>>>>> 10ca28818a24a4e4bd5f5dd38196d3b764856a9b
    );
  }
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


