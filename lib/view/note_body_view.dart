import 'package:flutter/material.dart';
import 'package:note_application/widget/custom_main_sheet_body.dart';

import '../widget/note_body_view_extract.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  static String id = "NoteBodyView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                context: context,
                builder: (context) {
                  return const CustomMainSheetBody();
                });
          }),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: NoteBodyViewExtract(),
        ),
      ),
    );
  }
}
