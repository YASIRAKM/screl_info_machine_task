import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/widgets.dart';

part 'side_bar_model.freezed.dart';

enum StepStatus { completed, pending }

@freezed
class SideBarModel with _$SideBarModel {
  const factory SideBarModel({
    required String title,
    required String label,
    required StepStatus status,
    required Widget formWidget,
  }) = _SideBarModel;
}
