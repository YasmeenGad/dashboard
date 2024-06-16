import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/widgets/active_all_expenses_item.dart';
import 'package:dashboard/widgets/inActive_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(itemModel: itemModel)
        : InactiveAllExpensesItem(itemModel: itemModel);
  }
}
