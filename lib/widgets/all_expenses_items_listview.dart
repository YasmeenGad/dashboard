import 'package:dashboard/models/all_expenses_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemsListview extends StatefulWidget {
  const AllExpensesItemsListview({super.key});

  @override
  State<AllExpensesItemsListview> createState() =>
      _AllExpensesItemsListviewState();
}

class _AllExpensesItemsListviewState extends State<AllExpensesItemsListview> {
  final items = <AllExpensesItemModel>[
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
       Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                      child: AllExpensesItem(
                        itemModel: items[0],
                        isSelected: selectedIndex == 0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8,),
               Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      },
                      child: AllExpensesItem(
                        itemModel: items[1],
                        isSelected: selectedIndex == 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8,),
               Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 2;
                        });
                      },
                      child: AllExpensesItem(
                        itemModel: items[2],
                        isSelected: selectedIndex == 2,
                      ),
                    ),
                  ),
                ),
              )
    ],);
    
  }
}
