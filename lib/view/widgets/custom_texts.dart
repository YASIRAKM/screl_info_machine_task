import 'package:flutter/material.dart';
import 'package:screl_machine_task/model/side_bar_model/side_bar_model.dart';

Text titleTextLarge({
  required String text,
  required bool isWideScreen,
}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.bold, fontSize: isWideScreen ? 16 : 14),
  );
}

Text titleTextMedium({
  required String text,
  required bool isWideScreen,
}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.w600, fontSize: isWideScreen ? 14 : 12),
  );
}

Text subTitleText({
  required String text,
  required bool isWideScreen,
}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: FontWeight.w300, fontSize: isWideScreen ? 12 : 10),
  );
}

Text toggleText(
    {required String text,
    required bool isWideScreen,
    required bool isSelected}) {
  return Text(
    text,
    style: TextStyle(
        fontWeight: isSelected ? FontWeight.w600 : FontWeight.w300,
        fontSize: isWideScreen ? 14 : 12),
  );
}

Text sideBarTitleText(
    {required String text,
    required bool isWideScreen,
    required StepStatus status}) {
  return Text(text,
      style: TextStyle(
          fontSize: isWideScreen ? 14 : 12,
          fontWeight: status == StepStatus.completed
              ? FontWeight.w600
              : FontWeight.w300));
}

Text sideBarSubTitle(
    {required String text,
    required bool isWideScreen,
    required StepStatus status}) {
  return Text(text,
      style: TextStyle(
          fontSize: isWideScreen ? 10 : 8,
          fontWeight: status == StepStatus.completed
              ? FontWeight.w600
              : FontWeight.w300));
}
