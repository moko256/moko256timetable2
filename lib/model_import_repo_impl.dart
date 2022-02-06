import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moko256timetable2/model_main_vo.dart';
import 'package:moko256timetable2/weekdays.dart';

import 'model_import_repo.dart';
part 'model_import_repo_impl.freezed.dart';
part 'model_import_repo_impl.g.dart';

class ModelImportRepoJsonFromStorage extends ModelImportRepoJson {
  @override
  Future<String?> jsonSource() async {
    var fileResult = await FilePicker.platform.pickFiles(withReadStream: true);

    var stream = await fileResult?.files.singleOrNull?.readStream?.first;
    if (stream != null) {
      return const Utf8Decoder().convert(stream);
    } else {
      return null;
    }
  }
}

class ModelImportRepoJsonFromClipboard extends ModelImportRepoJson {
  @override
  Future<String?> jsonSource() async {
    var clipResult = await Clipboard.getData(Clipboard.kTextPlain);
    return clipResult?.text;
  }
}

abstract class ModelImportRepoJson extends ModelImportRepo {
  Future<String?> jsonSource();

  @override
  Future<ModelVoTermAndClasses?> import() async {
    var json = await jsonSource();
    if (json != null) {
      return _classesFromJson(json);
    } else {
      return null;
    }
  }
}

ModelVoTermAndClasses? _classesFromJson(String value) {
  try {
    var jsonTimetable = _ImportingTimetable.fromJson(json.decode(value));

    return ModelVoTermAndClasses(
      ModelVoTermInfo(
        jsonTimetable.info.name,
        jsonTimetable.info.weekDays.map(_weekdayFromString).toList(),
        jsonTimetable.info.periodMax,
      ),
      {
        for (var item in jsonTimetable.classes
            .where((item) => item.room != "" || item.name != ""))
          ModelVoClassKey(
            _weekdayFromString(item.weekDay),
            item.period,
          ): ModelVoClassInfo(
            item.name,
            item.room,
          )
      },
    );
  } catch (e) {
    return null;
  }
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
