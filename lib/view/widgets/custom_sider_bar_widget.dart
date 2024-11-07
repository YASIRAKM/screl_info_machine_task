import 'package:flutter/material.dart';
import 'package:screl_machine_task/model/side_bar_model/side_bar_model.dart';
import 'package:screl_machine_task/utils/colors.dart';
import 'package:screl_machine_task/view/widgets/custom_texts.dart';

class CustomSiderBarWidget extends StatelessWidget {
  final String title;
  final String label;
  final StepStatus status;
  final int number;
  final bool isWideScreen;

  const CustomSiderBarWidget({
    required this.title,
    required this.label,
    required this.status,
    required this.number,
    super.key,
    required this.isWideScreen,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 5),
      title: sideBarTitleText(
        text: title,
        isWideScreen: isWideScreen,
        status: status,
      ),
      subtitle: sideBarSubTitle(
        text: label,
        isWideScreen: isWideScreen,
        status: status,
      ),
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          border: status == StepStatus.completed
              ? null
              : Border.all(color: blackColor.withOpacity(.5)),
          shape: BoxShape.circle,
          color: status == StepStatus.completed ? orangeColor : whiteColor,
        ),
        child: Center(
            child: Text(
          number.toString(),
          style: TextStyle(
              color: status == StepStatus.completed ? whiteColor : blackColor),
        )),
      ),
    );
  }
}
