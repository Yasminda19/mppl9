class Constants {
  static const testing = true;

  // Shared Prefs keys
  static const String appPreviouslyRunKey = "previously_run";
}

enum TransactionType { IN, OUT }

enum TransactionCategory {
  FOOD,
  TRANSPORTATION,
  BILLS,
  ENTERTAINMENT,
  HOUSE,
  TRAVEL,
}
