import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/all_expenses_item_header.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: Color(0xFFF1F1F1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            "${itemModel.title}",
            style: AppStyles.styleMedium16,
          ),
             const SizedBox(
            height: 8,
          ),
          Text(
            "${itemModel.date}",
            style: AppStyles.styleRegular14,
          ),
             const SizedBox(
            height: 16,
          ),
          Text(
            "${itemModel.price}",
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
