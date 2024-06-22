import 'package:dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: AllExpensesAndQuickInvoiceSection()),
        const SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
