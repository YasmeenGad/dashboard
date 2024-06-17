import 'package:dashboard/widgets/custom_background_container.dart';
import 'package:dashboard/widgets/latest_transaction.dart';
import 'package:dashboard/widgets/quick_invoice_form.dart';
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
            color: Color(0xffF1F1F1),
          ),
          const QuickInvoiceForm(),
        ],
      ),
    );
  }
}
