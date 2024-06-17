import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppStyles.styleRegular16,
          fillColor: Color(0xFFFAFAFA),
          filled: true,
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder()),
    );
  }
}

OutlineInputBorder BuildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(
      color: Color(0xffFAFAFA),
    ),
  );
}
