import 'package:easy_dialog/easy_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_machine_task/model/side_bar_model/side_bar_model.dart';
import 'package:screl_machine_task/utils/colors.dart';
import 'package:screl_machine_task/view/widgets/custom_texts.dart';
import 'package:screl_machine_task/view/widgets/custome_button.dart';
import 'package:screl_machine_task/view/widgets/width_height_space.dart';
import 'package:screl_machine_task/view_model/form_provider.dart';

class TimeLineView extends ConsumerWidget {
  final BoxConstraints boxConstraints;
  const TimeLineView(this.boxConstraints, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(currentStepProvider);
    final steps = ref.watch(stepsProvider(boxConstraints));
    bool isWideScreen = boxConstraints.maxWidth > 1200;

    return Scaffold(
      backgroundColor: whiteColor,
      body: bodyWidget(steps, currentStep, isWideScreen, context),
    );
  }

/*BODY WIDGET */
  Padding bodyWidget(List<SideBarModel> steps, int currentStep,
      bool isWideScreen, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: steps.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Tooltip(
                      message: steps[index].title,
                      child: Container(
                        decoration: BoxDecoration(
                            color: steps[index].status == StepStatus.completed
                                ? orangeColor
                                : whiteColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color:
                                    steps[index].status == StepStatus.completed
                                        ? orangeColor
                                        : blackColor.withOpacity(.5))),
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(
                                color:
                                    steps[index].status == StepStatus.completed
                                        ? whiteColor
                                        : blackColor.withOpacity(.5)),
                          ),
                        ),
                      ),
                    ),
                    if (index < steps.length - 1)
                      Container(
                        width: 3,
                        height: 50,
                        color:
                            index == currentStep - 1 ? orangeColor : greyColor,
                      ),
                  ],
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
                onPressed: () {
                  helperDialoge(isWideScreen, context).show(context);
                },
                icon: Icon(
                  Icons.help,
                  color: blackColor.withOpacity(.6),
                )),
          )
        ],
      ),
    );
  }

/*HELPER DIALOGE */
  EasyDialog helperDialoge(bool isWideScreen, BuildContext context) {
    return EasyDialog(
      cornerRadius: 10,
      width: 200,
      height: 200,
      contentList: <Widget>[
        titleTextLarge(
          text: "Need help ?",
          isWideScreen: isWideScreen,
        ),
        height(height: 8),
        subTitleText(
          text: "Get to know how your Campaign can reach a wider audience",
          isWideScreen: isWideScreen,
        ),
        height(height: 8),
        CustomButton(
          title: "Contact Us",
          onPressed: () {
            Navigator.canPop(context);
          },
          color: blackColor,
          isSaveDraft: true,
        )
      ],
    );
  }
}
