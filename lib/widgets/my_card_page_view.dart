import 'package:dashboard/widgets/my_card.dart';
import 'package:flutter/material.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key});
  static const List<double> childrenHeight = [];
  final int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: childrenHeight[currentPage],
      child: PageView.builder(
        
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return MyCard();
        },
      ),
    );
  }
}
