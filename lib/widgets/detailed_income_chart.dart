import 'package:dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
            radius: activeIndex == 0 ? 60 : 50,
            title: '40%',
            value: 40,
            color: Color(0xFF208CC8),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
            radius: activeIndex == 1 ? 60 : 50,
            title: '25%',
            value: 25,
            color: Color(0xFF4EB7F2),
          ),
          PieChartSectionData(
            titleStyle:
                AppStyles.styleMedium16(context).copyWith(color: Colors.white),
            radius: activeIndex == 2 ? 60 : 50,
            title: '20%',
            value: 20,
            color: Color(0xFF064061),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleMedium16(context)
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
            radius: activeIndex == 3 ? 60 : 50,
            title: '22%',
            value: 22,
            color: Color(0xFFE2DECD),
          ),
        ]);
  }
}
