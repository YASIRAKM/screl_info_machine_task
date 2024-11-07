import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_machine_task/model/side_bar_model/side_bar_model.dart';
import 'package:screl_machine_task/view/screens/form_view.dart';


final currentStepProvider = StateProvider<int>((ref) => 0);
final isRunOnly = StateProvider<bool>((ref) => false);
final isCustomAudience = StateProvider<bool>((ref) => false);

final stepsProvider =
    Provider.family<List<SideBarModel>, BoxConstraints>((ref, boxConstraints) {
  return [
    SideBarModel(
        title: "Create New Campaign",
        label: "Fill out these details and get your Campaign ready ",
        status: status(ref, 0),
        formWidget: FormWidget(
          constraints: boxConstraints,
        )),
    SideBarModel(
        title: "Create Segments",
        label: "Get full control over your audience",
        status: status(ref, 1),
        formWidget: FormWidget(
          constraints: boxConstraints,
        )),
    SideBarModel(
        title: "Bidding Strategy",
        label: "Optimize your campaign reach with adsense",
        status: status(ref, 2),
        formWidget: FormWidget(
          constraints: boxConstraints,
        )),
    SideBarModel(
        title: "Site Links",
        label: "Step your customer journey flow",
        status: status(ref, 3),
        formWidget: FormWidget(
          constraints: boxConstraints,
        )),
    SideBarModel(
        title: "Review Campaign",
        label: "Double check your campaign is ready to go",
        status: status(ref, 4),
        formWidget: FormWidget(
          constraints: boxConstraints,
        )),
  ];
});

StepStatus status(ref, int count) {
  int step = ref.watch(currentStepProvider);

  if (count <= step) {
    return StepStatus.completed;
  } else {
    return StepStatus.pending;
  }
}
