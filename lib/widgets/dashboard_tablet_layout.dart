import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:flutter/material.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: DashBoardMobileLayout()),
        const SizedBox(
          width: 32,
        ),
      ],
    );
  }
}

