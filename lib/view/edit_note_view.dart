import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application/cubit/cubit/note_view_cubit.dart';
import 'package:note_application/model/note_model.dart';
import 'package:note_application/widget/Custom_text_field.dart';
import 'package:note_application/widget/custom_icon_appBar.dart';
import 'package:note_application/widget/custom_text_appBar.dart';

import '../constant.dart';
import '../widget/custom_circle_avatar.dart';

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
              EditNoteColor(
                note: widget.note,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditNoteColor extends StatefulWidget {
  const EditNoteColor({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteColor> createState() => _EditNoteColorState();
}

class _EditNoteColorState extends State<EditNoteColor> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kListcolor.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: kListcolor.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kListcolor[index].value;
                setState(() {});
              },
              child: CustomCircleAvatar(
                color: kListcolor[index],
                isActive: currentIndex == index,
              ),
            );
          }),
    );
  }
}
