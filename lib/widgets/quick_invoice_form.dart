import 'package:dashboard/widgets/title_text_field.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: const TitleTextField(
                    title: "Customer name", hint: "Type customer name")),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: const TitleTextField(
                    title: "Customer Email", hint: "Type customer email")),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: const TitleTextField(
                    title: "name", hint: "Type customer name")),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: const TitleTextField(title: "Item mount", hint: "USD")),
          ],
        ),
      ],
    );
  }
}
