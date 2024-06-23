import 'package:dashboard/widgets/adaptive_layout.dart';
import 'package:dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width<700 ? AppBar(
        leading: Icon(Icons.menu),
        elevation: 0,
        backgroundColor: Color(0xFF4EB7F2),
      ) : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => DashBoardMobileLayout(),
          tabletLayout: (context) => DashboardTabletLayout(),
          destopLayout: (context) => DashBoardDeskTopLayout()),
    );
  }
}
