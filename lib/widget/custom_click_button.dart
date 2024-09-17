import 'package:flutter/material.dart';

import '../constant.dart';

class CustomCickButton extends StatelessWidget {
  const CustomCickButton({
    super.key,
    this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.cyanAccent),
        child: Center(
            child: Text(
          "Add",
          style: TextStyle(
              color: kColor, fontSize: 20, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}
