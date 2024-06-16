import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
       const Expanded(child: SizedBox()),
        Transform.rotate(
          angle: 4.71239 * 2,
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 19,
            color: Color(0xFF064061),
          ),
        ),
      ],
    );
  }
}
