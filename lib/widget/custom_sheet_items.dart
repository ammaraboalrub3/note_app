import 'package:flutter/material.dart';
import 'package:note_application/widget/Custom_text_field.dart';

class CustomSheetItems extends StatelessWidget {
  const CustomSheetItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextField(
          maxLines: 1,
          hint: "text",
        ),
      ],
    );
  }
}
