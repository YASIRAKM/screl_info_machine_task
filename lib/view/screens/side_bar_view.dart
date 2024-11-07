import 'package:flutter/material.dart';
import 'package:screl_machine_task/model/side_bar_model/side_bar_model.dart';
import 'package:screl_machine_task/utils/colors.dart';
import 'package:screl_machine_task/view/widgets/custom_sider_bar_widget.dart';
import 'package:screl_machine_task/view/widgets/custom_texts.dart';
import 'package:screl_machine_task/view/widgets/custome_button.dart';
import 'package:screl_machine_task/view/widgets/width_height_space.dart';

class SideBar extends StatelessWidget {
  final BoxConstraints boxConstraints;
  const SideBar({
    super.key,
    required this.steps,
    required this.boxConstraints,
  });

  final List<SideBarModel> steps;

  @override
  Widget build(BuildContext context) {
    bool isWideScreen = boxConstraints.maxWidth > 1200;
    return Scaffold(
      backgroundColor: whiteColor,
      body: bodyWidget(isWideScreen),
    );
  }

/*BODY WIDGET */
  Padding bodyWidget(bool isWideScreen) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: steps.length,
              itemBuilder: (context, index) {
                final step = steps[index];
                return CustomSiderBarWidget(
                  isWideScreen: isWideScreen,
                  title: step.title,
                  label: step.label,
                  status: step.status,
                  number: index + 1,
                );
              },
            ),
          ),
          sideBarTitleText(
            text: "Need help ?",
            isWideScreen: isWideScreen,
            status: StepStatus.completed,
          ),
          height(height: 6),
          sideBarSubTitle(
              text:
                  "Get to know how your Caampaign \ncan reach a wider audience",
              isWideScreen: isWideScreen,
              status: StepStatus.completed),
          height(height: 6),
          CustomButton(
            title: "Contact Us",
            onPressed: () {},
            color: blackColor,
            isSaveDraft: true,
          )
        ],
      ),
    );
  }
}
