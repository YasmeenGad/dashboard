import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration:
              ShapeDecoration(shape: OvalBorder(), color: Color(0xffFAFAFA)),
              child: Icon(Icons.add,color:Color(0xFF4EB7F2)),
        )
      ],
    );
  }
}
