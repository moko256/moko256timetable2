import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/features/classes/classes_state.dart';
import 'package:moko256timetable2/features/classes_show/classes_show_state.dart';

class ClassesShowBehavior {
  static final showClasses = Provider((ref) {
    return ref.watch(storeClasses).state.when(
      loading: () {
        return StateShow.loading();
      },
      loaded: (classes) {
        var colors = _generateCellColors(classes);
        return StateShow.loaded(
          classes.classesInfo,
          classes.classes.map(
            (key, value) => MapEntry(
              key,
              ColorizedClassDetails(value, colors[value] ?? 0),
            ),
          ),
        );
      },
    );
  });

  static Map<ClassDetails, double> _generateCellColors(Classes classes) {
    var weekDays = {
      for (var i in classes.classesInfo.weekDays)
        i: classes.classesInfo.weekDays.indexOf(i)
    };
    var order = classes.classes.map(
      (key, value) => MapEntry(
        value,
        (weekDays[key] ?? 0 + 1) * (key.period + 1),
      ),
    );
    var orderSorted = order.entries.toList();
    orderSorted.sort((a, b) => a.value.compareTo(b.value));

    var colorsIndex = -1;
    var colors = Map.fromIterable(
      orderSorted,
      key: (i) => (i as MapEntry<ClassDetails, int>).key,
      value: (i) {
        colorsIndex += 1;
        return colorsIndex / orderSorted.length;
      },
    );
    return colors;
  }
}
