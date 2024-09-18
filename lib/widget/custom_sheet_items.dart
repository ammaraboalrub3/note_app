import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application/cubit/add_note/add_note_cubit.dart';

import 'Custom_text_field.dart';
import 'custom_circle_avatar_builder.dart';
import 'custom_click_button.dart';

class CustomSheetItems extends StatefulWidget {
  const CustomSheetItems({
    super.key,
  });

  @override
  State<CustomSheetItems> createState() => _CustomSheetItemsState();
}

class _CustomSheetItemsState extends State<CustomSheetItems> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              maxLines: 1,
              hint: "text",
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
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
            CustomCickButton(onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                BlocProvider.of<AddNoteCubit>(context);
                Navigator.pop(context);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            }),
            const SizedBox(
              height: 18,
            )
          ],
        ),
      ),
    );
  }
}
