import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
         const QuickInvoiceHeader(),
        ],
      ),
    );
  }
}