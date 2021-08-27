import 'dart:async';
import 'dart:io';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/features/classes/classes_state.dart';

final classesRepo = StateProvider((ref) => ClassesRepo());

class ClassesRepo {
  var _classes = Classes(
    ClassesInfo(
      [WeekDay.mon, WeekDay.tue, WeekDay.wed, WeekDay.thu, WeekDay.fri],
      6,
    ),
    {
      ClassKey(WeekDay.mon, 0): ClassDetails("title", "room"),
    },
  );
  Future<Classes> getOrRetrieveAllTable() {
    print("retrieve All");
    return Future(() async {
      await Future.delayed(const Duration(seconds: 1));
      return _classes;
    });
  }

  void setAll(Classes classes) {
    _classes = classes;
  }

  void updateClass(ClassKey key, ClassDetails value) {}

  void deleteClass(ClassKey key) {}
}
