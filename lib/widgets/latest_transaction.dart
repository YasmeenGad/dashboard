import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/latest_transaction_list_view.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text("Latest Transaction",style: AppStyles.styleMedium16,),
        const SizedBox(height: 16,),
        const LatestTransactionListView(),
      ],
    );
  }
}