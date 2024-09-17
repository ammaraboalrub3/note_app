import 'package:flutter/material.dart';

import 'Custom_note_item_builder.dart';
import 'custom_icon_appBar.dart';
import 'custom_text_appBar.dart';

class NoteBodyViewExtract extends StatelessWidget {
  const NoteBodyViewExtract({
    super.key,
  });

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
