import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/dots_indicator.dart';
import 'package:dashboard/widgets/my_card_page_view.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20,
        ),
       const SizedBox(height: 20,),
      const  MyCardPageView(),
       const SizedBox(height: 20,),
      const  DotsIndicator(),
      ],
    );
  }
}
