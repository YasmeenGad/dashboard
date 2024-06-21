import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/all_expenses_header.dart';
import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/income_chart.dart';
import 'package:dashboard/widgets/range_options.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(
            text: 'Income',
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: IncomeChart()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
