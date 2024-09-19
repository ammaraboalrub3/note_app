import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application/cubit/cubit/note_view_cubit.dart';
import 'package:note_application/model/note_model.dart';
import 'package:note_application/widget/Custom_text_field.dart';
import 'package:note_application/widget/custom_circle_avatar_builder.dart';
import 'package:note_application/widget/custom_icon_appBar.dart';
import 'package:note_application/widget/custom_text_appBar.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomTextAppBar(text: "Edit Note"),
                  CustomIconAppBar(
                      icon: Icons.check,
                      onPressed: () {
                        widget.note.title = title ?? widget.note.title;
                        widget.note.subTitle = subTitle ?? widget.note.subTitle;
                        widget.note.save();
                        BlocProvider.of<NoteViewCubit>(context).fetchAllNotes();
                        Navigator.pop(context);
                      }),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                  onChanged: (value) {
                    title = value;
                  },
                  hint: widget.note.title,
                  maxLines: 1),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                  onChanged: (value) {
                    subTitle = value;
                  },
                  hint: widget.note.subTitle,
                  maxLines: 5),
              const SizedBox(
                height: 16,
              ),
              const CustomCircleAvatarBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
