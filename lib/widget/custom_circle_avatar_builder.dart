import 'package:flutter/material.dart';
import 'package:note_application/constant.dart';
import 'package:note_application/widget/custom_circle_avatar.dart';

class CustomCircleAvatarBuilder extends StatelessWidget {
  const CustomCircleAvatarBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: kListcolor.length,
          itemBuilder: (context, index) {
            return const CustomCircleAvatar();
          }),
    );
  }
}
