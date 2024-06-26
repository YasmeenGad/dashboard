import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/range_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key,  this.text="All Expenses"});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: AppStyles.styleSemiBold20(context),
        ),
        const RangeOptions(),
      ],
    );
  }
}
