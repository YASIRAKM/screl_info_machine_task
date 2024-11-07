import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_data_model.freezed.dart';
part 'form_data_model.g.dart';

@freezed
@HiveType(typeId: 0)
class FormData with _$FormData {
  const factory FormData({
    @HiveField(0) String? subject,
    @HiveField(1) String? previewText,
    @HiveField(2) String? name,
    @HiveField(3) String? mail,
    @HiveField(4) bool? isRunOnly,
    @HiveField(5) bool? isCustomAudience,
    @HiveField(6) int? isCompleted,
  }) = _FormData;

 
  factory FormData.empty() => const FormData(
        subject: null,
        previewText: null,
        name: null,
        mail: null,
        isRunOnly: false,
        isCustomAudience: false,
        isCompleted: null,
      );
}
