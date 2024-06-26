import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});
  final String title, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: AlignmentDirectional.centerStart,
          child: Text(
            title,
            style: AppStyles.styleMedium16(context),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
         CustomTextField(hint: hint,),
      ],
    );
  }
}
