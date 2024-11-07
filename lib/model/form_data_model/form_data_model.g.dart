// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FormDataAdapter extends TypeAdapter<FormData> {
  @override
  final int typeId = 0;

  @override
  FormData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FormData(
      subject: fields[0] as String?,
      previewText: fields[1] as String?,
      name: fields[2] as String?,
      mail: fields[3] as String?,
      isRunOnly: fields[4] as bool?,
      isCustomAudience: fields[5] as bool?,
      isCompleted: fields[6] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FormData obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.subject)
      ..writeByte(1)
      ..write(obj.previewText)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.mail)
      ..writeByte(4)
      ..write(obj.isRunOnly)
      ..writeByte(5)
      ..write(obj.isCustomAudience)
      ..writeByte(6)
      ..write(obj.isCompleted);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FormDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
