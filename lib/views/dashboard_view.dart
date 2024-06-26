import 'package:dashboard/utils/size_config.dart';
import 'package:dashboard/widgets/adaptive_layout.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:dashboard/widgets/dashboard_desktop_layout.dart';
import 'package:dashboard/widgets/dashboard_mobile_layout.dart';
import 'package:dashboard/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> keyScaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffoldState,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  keyScaffoldState.currentState!.openDrawer();
                  setState(() {});
                },
                icon: Icon(Icons.menu),
              ),
              elevation: 0,
              backgroundColor: Color(0xFFFAFAFA),
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? CustomDrawer() : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => DashBoardMobileLayout(),
          tabletLayout: (context) => DashboardTabletLayout(),
          destopLayout: (context) => DashBoardDeskTopLayout()),
    );
  }
}
