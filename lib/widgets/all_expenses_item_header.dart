import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {required this.image,
      required this.imageColor,
      required this.imageBackground});
  final String image;
  final Color? imageColor, imageBackground;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: ShapeDecoration(
                color: imageBackground ?? Color(0xFFFAFAFA),
                shape: OvalBorder(),
              ),
              child: Center(
                  child: SvgPicture.asset(
                image,
                colorFilter: ColorFilter.mode(
                    imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn),
              )),
            ),
          ),
        ),
        
        Transform.rotate(
          angle: 4.71239 * 2,
          child: Icon(
            Icons.arrow_back_ios_rounded,
            size: 19,
            color: imageColor == null ? Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
