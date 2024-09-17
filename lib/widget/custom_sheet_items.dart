import 'package:flutter/material.dart';
import 'package:note_application/widget/Custom_text_field.dart';
import 'package:note_application/widget/custom_circle_avatar_builder.dart';

import 'custom_click_button.dart';

class CustomSheetItems extends StatelessWidget {
  const CustomSheetItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: 16,
            right: 16,
            left: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom),
        child: SingleChildScrollView(
            child: Column(
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
        )));
  }
}
