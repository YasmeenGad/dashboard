import 'package:dashboard/widgets/all_expenses.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashBoardDeskTopLayout extends StatelessWidget {
  const DashBoardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        const Expanded(
            flex: 2,
            child: Column(
              children: [
                const AllExpenses(),
                const SizedBox(
                  height: 24,
                ),
                const QuickInvoice(),
              ],
            ))
      ],
    );
  }
}
