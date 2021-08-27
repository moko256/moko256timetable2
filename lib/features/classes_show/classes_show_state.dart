import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/features/classes/classes_state.dart';

part 'classes_show_state.freezed.dart';

final storeShow = StateProvider((ref) => StateShow.loading());

@freezed
class ColorizedClassDetails with _$ColorizedClassDetails {
  factory ColorizedClassDetails(
    ClassDetails details,
    double color,
  ) = _ColorizedClassDetails;
}

@freezed
class StateShow with _$StateShow {
  factory StateShow.loading() = Loading;
  factory StateShow.loaded(
    ClassesInfo classesInfo,
    Map<ClassKey, ColorizedClassDetails> classes,
  ) = Loaded;
}
