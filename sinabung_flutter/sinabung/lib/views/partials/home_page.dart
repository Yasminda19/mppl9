import 'package:flutter/material.dart';
import 'package:sinabung/utils/constants.dart';
import 'package:sinabung/utils/signin.dart';
import 'package:sinabung/utils/styles.dart';
import 'package:sinabung/views/partials/home_card.dart';
import 'package:sinabung/views/partials/transaction_card.dart';

class HomePage extends StatefulWidget {
  final GoogleAuth auth;
  HomePage({this.auth});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userName;
  String uid;

  Widget _buildPengeluaranBulanIni({double out = 0}) {
    return SinabungHomeCard(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Pengeluaran Bulan Ini",
            style: TextStyle(fontSize: 14, color: Color(0xFF202944)),
          ),
          SizedBox(height: 11),
          Text(
            "Rp. $out",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Color(0xFF212B36),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardListItem(IconData icon, String text, Widget item,
      {bool lastPadding = true}) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SinabungHomeCard(
        color: Colors.white,
        child: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Icon(icon, color: Styles.accentBlue),
                ),
                Text(text, style: TextStyle(color: Styles.accentBlue)),
              ],
            ),
            Container(
                alignment: Alignment.centerRight,
                padding: lastPadding
                    ? const EdgeInsets.only(top: 4, bottom: 4)
                    : EdgeInsets.zero,
                child: item),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    widget.auth.getCurrentUser().then((user) => {
          if (user != null)
            setState(() {
              userName = user.displayName;
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
            "Selamat Sore, $userName",
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 12, bottom: 12),
            child: Column(
              children: [
                _buildPengeluaranBulanIni(out: 18570000),
                _buildCardListItem(
                  Icons.money,
                  "Pemasukkan",
                  Text(
                    "Rp 300000",
                    style: TextStyle(color: Styles.accentBlue),
                    textAlign: TextAlign.right,
                  ),
                ),
                _buildCardListItem(
                  Icons.account_balance_wallet,
                  "Net",
                  Text(
                    "Rp 300000",
                    style: TextStyle(color: Styles.accentBlue),
                    textAlign: TextAlign.right,
                  ),
                ),
                _buildCardListItem(
                  Icons.monetization_on,
                  "Tabungan",
                  FlatButton(
                    height: 25,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    color: Styles.accentBlue,
                    onPressed: () {},
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text("Tambah +", style: TextStyle(fontSize: 10)),
                    padding: EdgeInsets.zero,
                  ),
                  lastPadding: false,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: Text("Mari Menabung", style: TextStyle(fontSize: 16)),
          ),
          SinabungHomeCard(
            color: Styles.accentBlue,
            child: Container(
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 12),
            child: Text("Hari Ini", style: TextStyle(fontSize: 16)),
          ),
          TransactionCard(
            type: TransactionCategory.FOOD,
            desc: "Makanan",
            price: 30000,
            date: DateTime.now(),
          ),
          Divider(),
          TransactionCard(
            type: TransactionCategory.FOOD,
            desc: "Makanan",
            price: 30000,
            date: DateTime.now(),
          ),
        ],
      ),
    );
  }
}
