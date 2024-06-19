import 'package:dashboard/widgets/custom_dot_indicator.dart';
import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8),
          child: CustomDotIndicator(isActive: false),
        ),
      ),
    );
  }
}
