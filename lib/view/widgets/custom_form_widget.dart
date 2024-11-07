import 'package:flutter/material.dart';
import 'package:screl_machine_task/view/widgets/custom_texts.dart';
import 'package:screl_machine_task/view/widgets/width_height_space.dart';
import 'package:screl_machine_task/view/widgets/text_field.dart';

Column customeFormEntryField(
    {required TextEditingController controller,
    required String title,
    required String hintText,
    int maxLines = 1,
    bool isVisibleBottom = false,
    bool isValidate = false,
    bool isMail = false,
    required bool isWideScreen,
    String bottomText = ""}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titleTextMedium(
        text: title,
        isWideScreen: isWideScreen,
      ),
      height(height: 3),
      CustomeTextField(
        title: title,
        isMail: isMail,
        controller: controller,
        hintText: hintText,
        isValidate: isValidate,
        maxLines: maxLines,
      ),
      Visibility(visible: isVisibleBottom, child: height(height: 3)),
      Visibility(
          visible: isVisibleBottom,
          child: subTitleText(text: bottomText, isWideScreen: isWideScreen))
    ],
  );
}
