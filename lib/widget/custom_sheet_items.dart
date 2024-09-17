import 'package:flutter/material.dart';
import 'package:note_application/widget/Custom_text_field.dart';
import 'package:note_application/widget/custom_circle_avatar_builder.dart';

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
        child: const SingleChildScrollView(
            child: Column(
          children: [
            CustomTextField(
              maxLines: 1,
              hint: "text",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              maxLines: 5,
              hint: "contant",
            ),
            SizedBox(
              height: 20,
            ),
            CustomCircleAvatarBuilder(),
          ],
        )));
  }
}
