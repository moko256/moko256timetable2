import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moko256timetable2/model_main.dart';

part 'repo_main_import.freezed.dart';
part 'repo_main_import.g.dart';

class RepoMainImport {
  Future<EntityMainClassesImport?> importJson() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(withReadStream: true);

    var stream = await result?.files.singleOrNull?.readStream?.first;
    if (stream != null) {
      try {
        return _classesFromJson(const Utf8Decoder().convert(stream));
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }
}

EntityMainClassesImport? _classesFromJson(String value) {
  var jsonTimetable = _ImportingTimetable.fromJson(json.decode(value));

  return EntityMainClassesImport(
    EntityMainTermInfo(
      jsonTimetable.info.name,
      {
        for (int i = 0; i < jsonTimetable.info.periodMax; i++)
          Duration(hours: i)
      },
      jsonTimetable.info.weekDays.map(_weekdayFromString).toSet(),
    ),
    EntityMainClassesMap({
      for (var item in jsonTimetable.classes
          .where((item) => item.room != "" || item.name != ""))
        EntityMainClassWhere(
          _weekdayFromString(item.weekDay),
          Duration(hours: item.period),
        ): EntityMainClassInfo(
          item.name,
          item.room,
        )
    }),
  );
}

WeekDay _weekdayFromString(String value) {
  switch (value) {
    case "Sun":
      return WeekDay.sun;
    case "Mon":
      return WeekDay.mon;
    case "Tue":
      return WeekDay.tue;
    case "Wed":
      return WeekDay.wed;
    case "Thu":
      return WeekDay.thu;
    case "Fri":
      return WeekDay.fri;
    case "Sat":
      return WeekDay.sat;
  }
  throw Exception("Unknown weekday: " + value);
}

@freezed
class _ImportingTimetable with _$_ImportingTimetable {
  factory _ImportingTimetable(
    _ImportingClassesInfo info,
    List<_ImportingClass> classes,
  ) = __ImportingTimetable;
  factory _ImportingTimetable.fromJson(Map<String, dynamic> json) =>
      _$__ImportingTimetable.fromJson(json);
}

@freezed
class _ImportingClassesInfo with _$_ImportingClassesInfo {
  factory _ImportingClassesInfo(
    String name,
    int periodMax,
    List<String> weekDays,
  ) = __ImportingClassesInfo;
  factory _ImportingClassesInfo.fromJson(Map<String, dynamic> json) =>
      _$__ImportingClassesInfo.fromJson(json);
}

@freezed
class _ImportingClass with _$_ImportingClass {
  factory _ImportingClass(
    String weekDay,
    int period,
    String name,
    String room,
  ) = __ImportingClass;
  factory _ImportingClass.fromJson(Map<String, dynamic> json) =>
      _$__ImportingClass.fromJson(json);
}
