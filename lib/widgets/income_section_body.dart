import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/widgets/detailed_income_chart.dart';
import 'package:dashboard/widgets/income_chart.dart';
import 'package:dashboard/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1200
        ? Expanded(child: DetailedIncomeChart())
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
