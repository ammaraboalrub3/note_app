import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application/cubit/cubit/note_view_cubit.dart';
import 'package:note_application/model/note_model.dart';
import 'package:note_application/widget/custom_note_item.dart';

class CustomNoteItemBuilder extends StatelessWidget {
  const CustomNoteItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteViewCubit, NoteViewState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NoteViewCubit>(context).notes ?? [];
        return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return CustomNoteItem(
                note: notes[index],
              );
            });
      },
    );
  }
}
