import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/features/classes/classes_repo.dart';
import 'package:moko256timetable2/features/classes/classes_state.dart';

class ClassesBehavior {
  static void loadClassesIfNotLoaded(
      StateController<ClassesRepo> repo, StateController<StateClasses> state) {
    state.state.when(
        loading: () {
          repo.state.getOrRetrieveAllTable().then((newClasses) {
            state.state = StateClasses.loaded(newClasses);
          });
        },
        loaded: (_) {});
  }
}
