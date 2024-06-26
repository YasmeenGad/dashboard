import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/dots_indicator.dart';
import 'package:dashboard/widgets/my_card_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCardsSection extends StatefulWidget {
  const MyCardsSection({super.key});

  @override
  State<MyCardsSection> createState() => _MyCardsSectionState();
}

class _MyCardsSectionState extends State<MyCardsSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () {
        currentPageIndex = pageController.page!.round();
        setState(() {});
      },
      
    );
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
         MyCardPageView(pageController: pageController,),
        const SizedBox(
          height: 20,
        ),
         DotsIndicator(currentPageIndex: currentPageIndex,),
      ],
    );
  }
}
