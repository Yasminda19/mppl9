import 'package:flutter/material.dart';

Widget mainCards = ListView(
  children: const <Widget>[
    Card(
      child: ListTile(
        title: Text('Pengeluaran Bulan Ini'),
        subtitle: Text.rich(
          TextSpan(
            // default text style
            children: <TextSpan>[
              TextSpan(
                  text: 'Rp.1.800.500',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
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
          TextSpan(
            // default text style
            children: <TextSpan>[
              TextSpan(
                  text: 'Rp.800.500', style: TextStyle(color: Colors.black)),
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
          TextSpan(
            // default text style
            children: <TextSpan>[
              TextSpan(
                  text: 'Rp.650.000', style: TextStyle(color: Colors.black)),
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
