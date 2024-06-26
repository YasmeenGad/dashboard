import 'package:dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/widgets/income_section.dart';
import 'package:dashboard/widgets/my_card_and_transaction_history_section.dart';
import 'package:flutter/material.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          const SizedBox(height: 24,),
           MyCardAndTransactionHistorySection(),
           const SizedBox(height: 24,),
           IncomeSection(),
        ],
      ),
    );
  }
}
