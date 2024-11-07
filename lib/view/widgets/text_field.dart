import 'package:flutter/material.dart';
import 'package:screl_machine_task/utils/colors.dart';
import 'package:screl_machine_task/utils/validators.dart';

class CustomeTextField extends StatelessWidget {
  final String title;
  final bool isValidate;
  final TextEditingController controller;
  final int maxLines;
  final String hintText;
  final bool isMail;
  const CustomeTextField(
      {super.key,
      this.isValidate = false,
      required this.controller,
      required this.hintText,
      this.isMail = false,
      this.maxLines = 1,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: isValidate
          ? (value) {
              return isMail
                  ? validateEmail(value)
                  : validateText(value, "$title is required");
            }
          : null,
      maxLines: maxLines,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: redColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: orangeColor),
        ),
        hintText: "Enter $hintText",
        hintStyle: const TextStyle(fontWeight: FontWeight.w300),
      ),
    );
  }
}
