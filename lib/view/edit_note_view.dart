import 'package:flutter/material.dart';
import 'package:note_application/widget/Custom_text_field.dart';
import 'package:note_application/widget/custom_circle_avatar_builder.dart';
import 'package:note_application/widget/custom_icon_appBar.dart';
import 'package:note_application/widget/custom_text_appBar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTextAppBar(text: "Edit Note"),
                  CustomIconAppBar(icon: Icons.check),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(hint: "edit Text", maxLines: 1),
              SizedBox(
                height: 16,
              ),
              CustomTextField(hint: "edit contant", maxLines: 5),
              SizedBox(
                height: 16,
              ),
              CustomCircleAvatarBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
