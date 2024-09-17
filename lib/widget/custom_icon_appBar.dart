import 'package:flutter/material.dart';

class CustomIconAppBar extends StatelessWidget {
  const CustomIconAppBar({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white.withOpacity(0.1)),
        width: 38,
        height: 38,
        child: Center(
          child: Icon(icon),
        ),
      ),
    );
  }
}
