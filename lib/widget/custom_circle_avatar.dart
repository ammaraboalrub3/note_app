import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 28,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
