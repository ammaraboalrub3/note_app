import 'package:flutter/material.dart';
import 'package:note_application/widget/Custom_note_item_builder.dart';

import '../widget/custom_icon_appBar.dart';
import '../widget/custom_text_appBar.dart';

class NoteBodyView extends StatelessWidget {
  const NoteBodyView({super.key});

  static String id = "NoteBodyView";

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
          ),
        ),
      ),
    );
  }
}
