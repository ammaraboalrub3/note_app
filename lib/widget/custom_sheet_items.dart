import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_application/cubit/add_note/add_note_cubit.dart';
import 'package:note_application/model/note_model.dart';

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
    return Form(
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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomCickButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formattedDate = DateFormat.yMd().format(currentDate);
                      var note = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: formattedDate,
                          color: Colors.green.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);

                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Add Success")));
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  });
            },
          ),
          const SizedBox(
            height: 18,
          )
        ],
      ),
    );
  }
}
