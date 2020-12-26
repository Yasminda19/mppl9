import 'package:flutter/material.dart';
import 'package:sinabung/utils/constants.dart';
import 'package:sinabung/utils/styles.dart';

class TransactionCard extends StatelessWidget {
  final TransactionCategory type;
  final String desc;
  final double price;
  final DateTime date;

  TransactionCard(
      {this.type = TransactionCategory.FOOD,
      this.desc = "",
      this.price = 0,
      this.date});

  Widget _buildIcon(TransactionCategory type) {
    IconData icon;
    switch (type) {
      case TransactionCategory.FOOD:
        icon = Icons.local_pizza;
        break;
      case TransactionCategory.TRANSPORTATION:
        icon = Icons.train;
        break;
      case TransactionCategory.BILLS:
        icon = Icons.electrical_services;
        break;
      case TransactionCategory.ENTERTAINMENT:
        icon = Icons.videocam;
        break;
      case TransactionCategory.HOUSE:
        icon = Icons.home;
        break;
      case TransactionCategory.TRAVEL:
        icon = Icons.flight;
        break;
    }
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Icon(icon, color: Colors.blueGrey, size: 30),
    );
  }

  String _convertDateTime(DateTime date) {
    return "${date.day} ${date.month} ${date.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: _buildIcon(this.type),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.desc, style: TextStyle(color: Styles.accentBlue)),
                  Text(
                    _convertDateTime(this.date),
                    style: TextStyle(color: Styles.accentBlueGray),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "Rp ${this.price}",
              style: TextStyle(color: Styles.accentBlue),
            ),
          ),
        ],
      ),
    );
  }
}
