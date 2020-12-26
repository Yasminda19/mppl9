import 'package:flutter/material.dart';
import 'package:sinabung/utils/constants.dart';
import 'package:sinabung/utils/signin.dart';
import 'package:sinabung/views/partials/tambah_list_item.dart';

extension TransactionCategoryExtension on TransactionCategory {
  Widget get icon {
    IconData _icon;
    switch (this) {
      case TransactionCategory.FOOD:
        _icon = Icons.local_pizza;
        break;
      case TransactionCategory.TRANSPORTATION:
        _icon = Icons.train;
        break;
      case TransactionCategory.BILLS:
        _icon = Icons.electrical_services;
        break;
      case TransactionCategory.ENTERTAINMENT:
        _icon = Icons.videocam;
        break;
      case TransactionCategory.HOUSE:
        _icon = Icons.home;
        break;
      case TransactionCategory.TRAVEL:
        _icon = Icons.flight;
        break;
    }
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Icon(_icon, color: Colors.blueGrey, size: 30),
    );
  }
}

extension TransactionTypeExtension on TransactionType {
  String get asString {
    switch (this) {
      case TransactionType.IN:
        return '\u{1F53B} Pemasukkan';
      case TransactionType.OUT:
        return '\u{1F53A} Pengeluaran';
      default:
        return null;
    }
  }
}

class TambahPage extends StatefulWidget {
  final GoogleAuth auth;
  TambahPage({this.auth});

  @override
  _TambahPageState createState() => _TambahPageState();
}

class _TambahPageState extends State<TambahPage> {
  String uid;

  TransactionCategory category = TransactionCategory.BILLS;
  TransactionType type = TransactionType.IN;
  DateTime date = DateTime.now();
  double price = 0;
  String desc = '';

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != date)
      setState(() {
        date = picked;
      });
  }

  String _convertDateTime(DateTime date) {
    return "${date.day} ${date.month} ${date.year}";
  }

  @override
  void initState() {
    widget.auth.getCurrentUser().then((user) => {
          if (user != null)
            setState(() {
              uid = user.uid;
            })
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.fromLTRB(24, 12, 24, 0),
        children: [
          Text(
            "Tambah Transaksi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          FormItem(
            title: "Jenis Transaksi",
            child: DropdownButton<TransactionType>(
              value: type,
              onChanged: (TransactionType newVal) {
                setState(() {
                  type = newVal;
                });
              },
              items: TransactionType.values.map((TransactionType type) {
                return DropdownMenuItem<TransactionType>(
                  value: type,
                  child: Text(type.asString),
                );
              }).toList(),
            ),
          ),
          FormItem(
            title: "Tanggal Transaksi",
            child: FlatButton(
              minWidth: double.infinity,
              onPressed: () => _selectDate(context),
              child: Text(_convertDateTime(date)),
            ),
          ),
          FormItem(
            title: "Jumlah Transaksi",
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixText: 'Rp ',
                border: InputBorder.none,
              ),
              onChanged: (String num) {
                setState(() {
                  price = double.parse(num);
                });
              },
            ),
          ),
          FormItem(
            title: "Kategori Transaksi",
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children:
                  TransactionCategory.values.map((TransactionCategory cat) {
                return FlatButton(
                  onPressed: () {
                    setState(() {
                      category = cat;
                    });
                  },
                  child: Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0x93, 0x80, 0x80, 0.25),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: cat.icon,
                  ),
                );
              }).toList(),
            ),
          ),
          FormItem(
            title: "Catatan",
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.create),
                border: InputBorder.none,
              ),
              onChanged: (String val) {
                setState(() {
                  desc = val;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
