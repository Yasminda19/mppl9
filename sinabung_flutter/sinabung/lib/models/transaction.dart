import 'package:firebase_database/firebase_database.dart';
import 'package:sinabung/utils/constants.dart';

class Transaction {
  String key;
  String userId;
  String desc;
  double price;
  DateTime date;
  TransactionType type;
  TransactionCategory category;

  Transaction(
      this.type, this.category, this.price, this.desc, this.date, this.userId);

  Transaction.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        userId = snapshot.value["userId"],
        price = snapshot.value["price"],
        date = snapshot.value["date"],
        type = snapshot.value["type"],
        category = snapshot.value["category"],
        desc = snapshot.value["desc"];
}
