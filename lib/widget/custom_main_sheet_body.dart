import 'package:flutter/material.dart';
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
      child: const SingleChildScrollView(
        child: CustomSheetItems(),
      ),
    );
  }
}
