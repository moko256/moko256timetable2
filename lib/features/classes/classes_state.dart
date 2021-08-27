import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'classes_state.freezed.dart';

final storeClasses = StateProvider((ref) => const StateClasses.loading());

@freezed
class ClassKey with _$ClassKey {
  factory ClassKey(
    WeekDay weekDay,
    int period,
  ) = _ClassKey;
}

@freezed
class ClassDetails with _$ClassDetails {
  factory ClassDetails(
    String title,
    String room,
  ) = _ClassDetails;
}

@freezed
class ClassesInfo with _$ClassesInfo {
  factory ClassesInfo(
    List<WeekDay> weekDays,
    int periodMax,
  ) = _ClassesInfo;
}

enum WeekDay { sun, mon, tue, wed, thu, fri, sat }

@freezed
class Classes with _$Classes {
  factory Classes(
    ClassesInfo classesInfo,
    Map<ClassKey, ClassDetails> classes,
  ) = _Classes;
}

@freezed
class StateClasses with _$StateClasses {
  const factory StateClasses.loading() = Loading;
  const factory StateClasses.loaded(Classes classes) = Loaded;
}
