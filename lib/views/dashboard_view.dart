import 'package:dashboard/widgets/adaptive_layout.dart';
import 'package:dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          destopLayout: (context) => DashBoardDeskTopLayout()),
    );
  }
}