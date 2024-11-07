import 'package:flutter/material.dart';
import 'package:screl_machine_task/utils/colors.dart';
import 'package:screl_machine_task/view/widgets/custom_texts.dart';

Row customToggleMethod(
    {required String title,
    required bool value,
    required Function(bool) onChanged,
    required bool isWideScreen}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      toggleText(text: title, isWideScreen: isWideScreen, isSelected: value),
      Switch(
        value: value,
        activeColor: whiteColor,
        activeTrackColor: orangeColor,
        onChanged: (value) {
          onChanged(value);
        },
      )
    ],
  );
}
