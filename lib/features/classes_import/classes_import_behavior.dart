import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/features/classes/classes_repo.dart';
import 'package:moko256timetable2/features/classes/classes_state.dart';

part 'classes_import_behavior.freezed.dart';
part 'classes_import_behavior.g.dart';

class ClassImportBehavior {
  static void importJson(
    StateController<ClassesRepo> repo,
    StateController<StateClasses> classes,
    Stream<List<int>> value,
  ) {
    value.first.then((value) {
      var newClasses = _classesFromJson(Utf8Decoder().convert(value));
      repo.state.setAll(newClasses);
      classes.state = StateClasses.loaded(newClasses);
    });
  }

  static Classes _classesFromJson(String value) {
    var jsonTimetable = _ImportingTimetable.fromJson(json.decode(value));

    return Classes(
      ClassesInfo(
        jsonTimetable.info.weekDays.map(_weekdayFromString).toList(),
        jsonTimetable.info.periodMax,
      ),
      {
        for (var item in jsonTimetable.classes
            .where((item) => item.room != "" || item.title != ""))
          ClassKey(
            _weekdayFromString(item.weekDay),
            item.period,
          ): ClassDetails(
            item.title,
            item.room,
          )
      },
    );
  }

  static WeekDay _weekdayFromString(String value) {
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
    List<String> weekDays,
    int periodMax,
  ) = __ImportingClassesInfo;
  factory _ImportingClassesInfo.fromJson(Map<String, dynamic> json) =>
      _$__ImportingClassesInfo.fromJson(json);
}

@freezed
class _ImportingClass with _$_ImportingClass {
  factory _ImportingClass(
    String weekDay,
    int period,
    String title,
    String room,
  ) = __ImportingClass;
  factory _ImportingClass.fromJson(Map<String, dynamic> json) =>
      _$__ImportingClass.fromJson(json);
}
