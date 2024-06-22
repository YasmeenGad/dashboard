import 'package:dashboard/models/chart_details_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.chartDetailsModel});
  final ChartDetailsModel chartDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: OvalBorder(), color: chartDetailsModel.color),
      ),
      title: Text(
        "${chartDetailsModel.title}",
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        '${chartDetailsModel.value}',
        style: AppStyles.styleMedium16,
      ),
    );
  }
}