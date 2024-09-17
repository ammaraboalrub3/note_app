import 'package:flutter/material.dart';
import 'package:note_application/widget/custom_note_item.dart';

class CustomNoteItemBuilder extends StatelessWidget {
  const CustomNoteItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CustomNoteItem();
        });
  }
}
