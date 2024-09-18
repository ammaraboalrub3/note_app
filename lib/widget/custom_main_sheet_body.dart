import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application/cubit/add_note/add_note_cubit.dart';

import '../cubit/cubit/note_view_cubit.dart';
import 'custom_sheet_items.dart';

class CustomMainSheetBody extends StatelessWidget {
  const CustomMainSheetBody({
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
        child: BlocProvider(
          create: (context) => AddNoteCubit(),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteSuccess) {
                BlocProvider.of<NoteViewCubit>(context).fetchAllNotes();

                Navigator.pop(context);
              }
              if (state is AddNoteFaluir) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("ERROR $state.errMessage")));
              }
            },
            builder: (context, state) {
              return AbsorbPointer(
                  absorbing: state is AddNoteLoading ? true : false,
                  child: const CustomSheetItems());
            },
          ),
        ),
      ),
    );
  }
}
