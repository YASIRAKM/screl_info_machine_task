import 'package:flutter/material.dart';
import 'package:screl_machine_task/utils/colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  bool isSaveDraft;
  final String title;
  final Color color;
  final VoidCallback onPressed;
  bool isFitWidth;
  CustomButton(
      {super.key,
      this.isSaveDraft = false,
      this.isFitWidth = false,
      required this.title,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
        style: FilledButton.styleFrom(
            fixedSize: isFitWidth
                ? const Size(double.maxFinite, 45)
                : const Size.fromHeight(45),
            side: isSaveDraft ? BorderSide(color: color) : BorderSide.none,
            backgroundColor: isSaveDraft ? whiteColor : color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: isSaveDraft ? color : whiteColor),
        ));
  }
}
