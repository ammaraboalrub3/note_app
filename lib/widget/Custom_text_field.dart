import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, required this.maxLines, this.onSaved});

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is Required";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: outLineInputBorderMethod(),
        enabledBorder: outLineInputBorderMethod(),
        focusedBorder: outLineInputBorderMethod(),
      ),
    );
  }

  OutlineInputBorder outLineInputBorderMethod() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
