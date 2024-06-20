class TransactionModel {
  final String title, date, amount;
  final bool withDraw;

  TransactionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.withDraw});
}
