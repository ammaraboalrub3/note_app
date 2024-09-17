import 'package:flutter/material.dart';
import 'package:note_application/constant.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            padding: const EdgeInsets.only(left: 10, right: 8),
            child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text(
                    "Flutter test",
                    style: TextStyle(color: kColor, fontSize: 25),
                  ),
                ),
                subtitle: Text(
                  "ammar abo larub ",
                  style:
                      TextStyle(color: kColor.withOpacity(0.5), fontSize: 15),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.edit,
                      color: kColor,
                      size: 27,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.delete,
                      color: kColor,
                      size: 27,
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28, top: 20),
            child: Text(
              "17/9/2024",
              style: TextStyle(color: kColor.withOpacity(0.5), fontSize: 14),
            ),
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
