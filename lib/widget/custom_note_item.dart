import 'package:flutter/material.dart';
import 'package:note_application/constant.dart';

import '../view/edit_note_view.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(16)),
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
                      "Flutter test",
                      style: TextStyle(color: kColor, fontSize: 30),
                    ),
                  ),
                  subtitle: Text(
                    "ammar abo larub ",
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
                        onPressed: () {},
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
                "17/9/2024",
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
