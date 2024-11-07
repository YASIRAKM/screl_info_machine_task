import 'package:hive/hive.dart';
import 'package:screl_machine_task/model/form_data_model/form_data_model.dart';

class FormDataHiveService {
  static const String _boxName = 'form_data_box';

  Future<void> _openBox() async {
    await Hive.openBox<FormData>(_boxName);
  }

  Future<List<FormData>> getAllFormData() async {
    await _openBox();
    final box = Hive.box<FormData>(_boxName);
    return box.values.toList();
  }

  Future<void> clearAllFormData() async {
    await _openBox();
    final box = Hive.box<FormData>(_boxName);
    await box.clear();
  }

  Future<void> addFormData(FormData formData) async {
    await _openBox();
    final box = Hive.box<FormData>(_boxName);
    await box.add(formData);
  }
}
