import 'package:dashboard/widgets/all_expenses_header.dart';
import 'package:dashboard/widgets/all_expenses_items_listview.dart';
import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
       child: Column(
        children: [
          AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          const AllExpensesItemsListview(),

        ],
      ),
      
    );
  }
}


