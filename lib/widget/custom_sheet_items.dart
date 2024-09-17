import 'package:flutter/material.dart';

import 'Custom_text_field.dart';
import 'custom_circle_avatar_builder.dart';
import 'custom_click_button.dart';

class CustomSheetItems extends StatelessWidget {
  const CustomSheetItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(
          maxLines: 1,
          hint: "text",
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomTextField(
          maxLines: 5,
          hint: "contant",
        ),
        const SizedBox(
          height: 40,
        ),
        const CustomCircleAvatarBuilder(),
        const SizedBox(
          height: 20,
        ),
        CustomCickButton(
          onPressed: () {},
        ),
        const SizedBox(
          height: 18,
        )
      ],
    );
  }
}
