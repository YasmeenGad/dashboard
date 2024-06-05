import 'package:dashboard/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(DashBoard());
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
