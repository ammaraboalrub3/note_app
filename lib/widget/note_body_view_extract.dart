import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application/cubit/cubit/note_view_cubit.dart';

import 'Custom_note_item_builder.dart';
import 'custom_icon_appBar.dart';
import 'custom_text_appBar.dart';

class NoteBodyViewExtract extends StatefulWidget {
  const NoteBodyViewExtract({
    super.key,
  });

  @override
  State<NoteBodyViewExtract> createState() => _NoteBodyViewExtractState();
}

class _NoteBodyViewExtractState extends State<NoteBodyViewExtract> {
  @override
  void initState() {
    BlocProvider.of<NoteViewCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextAppBar(
              text: "Notes",
            ),
            CustomIconAppBar(
              icon: Icons.search,
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Expanded(child: CustomNoteItemBuilder()),
      ],
    );
  }
}
