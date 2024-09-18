import 'package:flutter/material.dart';

import '../constant.dart';

class CustomCickButton extends StatelessWidget {
  const CustomCickButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
  });

  final void Function()? onPressed;
  final bool isLoading;

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
            child: isLoading
                ? CircularProgressIndicator(
                    color: kColor.withOpacity(0.5),
                  )
                : Text(
                    "Add",
                    style: TextStyle(
                        color: kColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )),
      ),
    );
  }
}
