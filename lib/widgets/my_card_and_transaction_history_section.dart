import 'package:dashboard/widgets/my_cards_section.dart';
import 'package:dashboard/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const MyCardsSection(),
      const Divider(height: 40,color: Color(0xffF1F1F1),),
      const TransactionHistory(),
    ],);
  }
}