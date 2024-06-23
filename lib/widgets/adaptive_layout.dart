import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.destopLayout});
  final WidgetBuilder mobileLayout, tabletLayout, destopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 700) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < 1000) {
        return tabletLayout(context);
      } else {
        return destopLayout(context);
      }
    });
  }
}
