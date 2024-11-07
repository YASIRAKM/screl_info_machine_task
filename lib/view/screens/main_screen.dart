import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:screl_machine_task/model/side_bar_model/side_bar_model.dart';
import 'package:screl_machine_task/utils/colors.dart';
import 'package:screl_machine_task/view/screens/side_bar_view.dart';
import 'package:screl_machine_task/view/screens/time_line_view.dart';
import 'package:screl_machine_task/view_model/form_provider.dart';

import 'package:screl_machine_task/view/widgets/width_height_space.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return DisplayView(boxConstraints: constraints);
      },
    );
  }
}

class DisplayView extends ConsumerWidget {
  final BoxConstraints boxConstraints;
  const DisplayView({
    super.key,
    required this.boxConstraints,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(currentStepProvider);
    final steps = ref.watch(stepsProvider(boxConstraints));
    Size size = MediaQuery.sizeOf(context);
    bool isWidScreen = boxConstraints.maxWidth > 900;
    bool isMediumScreen = boxConstraints.maxWidth > 750;
    return Scaffold(
      backgroundColor: greyColor,
      body: bodyWidget(isWidScreen, size, isMediumScreen, steps, currentStep),
    );
  }

/*BODY WIDGET */
  Padding bodyWidget(bool isWidScreen, Size size, bool isMediumScreen,
      List<SideBarModel> steps, int currentStep) {
    return Padding(
      padding: isWidScreen
          ? EdgeInsets.only(
              left: size.width * .15,
              right: size.width * .15,
              bottom: size.height * .04,
              top: size.height * .03,
            )
          : isMediumScreen
              ? EdgeInsets.only(
                  left: size.width * .01,
                  right: size.width * .01,
                  bottom: size.height * .01,
                  top: size.height * .01,
                )
              : const EdgeInsets.all(0),
      child: Row(
        children: [
          Expanded(
              flex: isWidScreen ? 4 : 5, child: steps[currentStep].formWidget),
          isWidScreen
              ? width(width: 24)
              : isMediumScreen
                  ? width(width: 12)
                  : const SizedBox.shrink(),
          !isWidScreen && !isMediumScreen
              ? Expanded(child: TimeLineView(boxConstraints))
              : Expanded(
                  flex: 2,
                  child: SideBar(
                    steps: steps,
                    boxConstraints: boxConstraints,
                  ),
                )
        ],
      ),
    );
  }
}
