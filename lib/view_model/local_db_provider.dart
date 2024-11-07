import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:screl_machine_task/service/form_data_repository.dart';
import 'package:screl_machine_task/model/form_data_model/form_data_model.dart';

class FormDataNotifier extends StateNotifier<List<FormData>> {
  final FormDataHiveService _hiveService;

  FormDataNotifier(this._hiveService) : super([]) {
    fetchFormData();
  }

  Future<void> fetchFormData() async {
    final formDataList = await _hiveService.getAllFormData();
    state = formDataList;
  }

  Future<void> addFormData(FormData formData) async {
    await _hiveService.addFormData(formData);
    await fetchFormData();
  }

  Future<void> clearAllFormData() async {
    await _hiveService.clearAllFormData();
    state = [];
  }
}

final formDataProvider =
    StateNotifierProvider<FormDataNotifier, List<FormData>>((ref) {
  final hiveService = FormDataHiveService();
  return FormDataNotifier(hiveService);
});
