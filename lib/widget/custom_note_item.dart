import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application/constant.dart';
import 'package:note_application/cubit/cubit/note_view_cubit.dart';
import 'package:note_application/model/note_model.dart';

import '../view/edit_note_view.dart';

class CustomNoteItem extends StatefulWidget {
  const CustomNoteItem({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<CustomNoteItem> createState() => _CustomNoteItemState();
}

class _CustomNoteItemState extends State<CustomNoteItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
            color: Color(widget.note.color),
            borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 15, top: 10),
                    child: Text(
                      widget.note.title,
                      style: TextStyle(color: kColor, fontSize: 30),
                    ),
                  ),
                  subtitle: Text(
                    widget.note.subTitle,
                    style:
                        TextStyle(color: kColor.withOpacity(0.5), fontSize: 16),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const EditNoteView();
                          }));
                        },
                        icon: (const Icon(
                          Icons.edit,
                          size: 27,
                        )),
                        color: kColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          widget.note.delete();
                          BlocProvider.of<NoteViewCubit>(context)
                              .fetchAllNotes();
                          setState(() {});
                        },
                        icon: (const Icon(
                          Icons.delete,
                          size: 27,
                        )),
                        color: kColor,
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32, top: 20),
              child: Text(
                widget.note.date,
                style: TextStyle(color: kColor.withOpacity(0.5), fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
