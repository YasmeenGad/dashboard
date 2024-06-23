import 'package:dashboard/widgets/all_expenses.dart';
import 'package:dashboard/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const AllExpenses(),
          const SizedBox(
            height: 24,
          ),
          const QuickInvoice(),
        ],
      ),
    );
  }
}
