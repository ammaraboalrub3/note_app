import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, required this.maxLines});

  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
