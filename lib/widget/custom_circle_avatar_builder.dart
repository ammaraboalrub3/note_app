import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_application/constant.dart';
import 'package:note_application/cubit/add_note/add_note_cubit.dart';
import 'package:note_application/widget/custom_circle_avatar.dart';

class CustomCircleAvatarBuilder extends StatefulWidget {
  const CustomCircleAvatarBuilder({super.key});

  @override
  State<CustomCircleAvatarBuilder> createState() =>
      _CustomCircleAvatarBuilderState();
}

class _CustomCircleAvatarBuilderState extends State<CustomCircleAvatarBuilder> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: kListcolor.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color =
                    kListcolor[index];
                setState(() {});
              },
              child: CustomCircleAvatar(
                color: kListcolor[index],
                isActive: currentIndex == index,
              ),
            );
          }),
    );
  }
}
