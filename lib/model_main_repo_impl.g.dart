// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_main_repo_impl.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveTermInfoAdapter extends TypeAdapter<_HiveTermInfo> {
  @override
  final int typeId = 0;

  @override
  _HiveTermInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _HiveTermInfo(
      fields[0] as String,
      (fields[1] as List).cast<int>(),
      fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _HiveTermInfo obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.weekDays)
      ..writeByte(2)
      ..write(obj.maxPeriod);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveTermInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveClassInfoAdapter extends TypeAdapter<_HiveClassInfo> {
  @override
  final int typeId = 1;

  @override
  _HiveClassInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _HiveClassInfo(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _HiveClassInfo obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.room);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveClassInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
