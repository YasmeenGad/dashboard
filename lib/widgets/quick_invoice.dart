import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/custom_text_field.dart';
import 'package:dashboard/widgets/latest_transaction.dart';
import 'package:dashboard/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const QuickInvoiceHeader(),
          const LatestTransaction(),
          const Divider(
            height: 48,
          ),
          const CustomTextField(),
        ],
      ),
    );
  }
}
