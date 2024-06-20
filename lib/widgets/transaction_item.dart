import 'package:dashboard/models/transaction_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          '${transactionModel.title}',
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          '${transactionModel.date}',
          style: AppStyles.styleRegular16,
        ),
        trailing: Text(
          '${transactionModel.title}',
          style: AppStyles.styleSemiBold20.copyWith(
              color: transactionModel.withDraw
                  ? Color(0xFFF3735E)
                  : Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
