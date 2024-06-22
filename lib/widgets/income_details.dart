import 'package:dashboard/models/chart_details_model.dart';
import 'package:dashboard/widgets/item_details.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  
  static const List<ChartDetailsModel> items = [
    ChartDetailsModel(
        color: Color(0xFF208CC8), title: "Design service", value: "40%"),
    ChartDetailsModel(
        color: Color(0xFF4EB7F2), title: "Design product", value: "25%"),
    ChartDetailsModel(
        color: Color(0xFF064061), title: "Product royalti", value: "20%"),
    ChartDetailsModel(
        color: Color(0xFFE2DECD), title: "Other", value: "22%"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
      return ItemDetails(chartDetailsModel: items[index]);
    }, itemCount: items.length);
  }
}
