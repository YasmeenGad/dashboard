import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
          backgroundColor: Color(0xFF4EB7F2),
        ),
        onPressed: () {},
        child: Text(
          "Send Money",
          style: AppStyles.styleSemiBold18,
        ),
      ),
    );
  }
}
