import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/transaction_history_header.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionHistoryHeader(),
       const SizedBox(height: 20,),
        Text('13 April 2022',style: AppStyles.styleMedium20,)
      ],
    );
  }
}

