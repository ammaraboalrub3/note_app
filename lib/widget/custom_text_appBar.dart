import 'package:flutter/material.dart';

class CustomTextAppBar extends StatelessWidget {
  const CustomTextAppBar({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontStyle: FontStyle.normal, fontSize: 30),
    );
  }
}
