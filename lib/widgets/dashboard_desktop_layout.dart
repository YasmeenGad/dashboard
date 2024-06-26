import 'package:dashboard/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/income_section.dart';
import 'package:dashboard/widgets/my_card_and_transaction_history_section.dart';
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
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    const Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensesAndQuickInvoiceSection(),
                        )),
                    const SizedBox(
                      width: 24,
                    ),
                    const Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 40,
                          ),
                          MyCardAndTransactionHistorySection(),
                          const SizedBox(
                            height: 24,
                          ),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
