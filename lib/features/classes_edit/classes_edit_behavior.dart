import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/features/classes/classes_repo.dart';
import 'package:moko256timetable2/features/classes/classes_state.dart';
import 'package:moko256timetable2/features/classes_edit/classes_edit_state.dart';

class ClassesEditBehavior {
  static void startEdit(
    StateController<ClassesRepo> repo,
    StateController<StateClasses> classes,
    StateController<StateEdit> edit,
    ClassKey key,
  ) {
    classes.state.when(
      loading: () {},
      loaded: (classes) {
        var classDetails = classes.classes[key];
        var title = classDetails?.title ?? "";
        var room = classDetails?.room ?? "";
        edit.state = StateEdit.editing(StateEditing(key, title, room));
      },
    );
  }

  static void updateTitle(
    StateController<ClassesRepo> repo,
    StateController<StateEdit> edit,
    String value,
  ) {
    edit.state.when(
      notEditing: () {},
      editing: (editing) {
        edit.state = StateEdit.editing(editing.copyWith(title: value));
      },
    );
  }

  static void updateRoom(
    StateController<ClassesRepo> repo,
    StateController<StateEdit> edit,
    String value,
  ) {
    edit.state.when(
      notEditing: () {},
      editing: (editing) {
        edit.state = StateEdit.editing(editing.copyWith(room: value));
      },
    );
  }

  static void cancelEdit(
    StateController<ClassesRepo> repo,
    StateController<StateEdit> edit,
  ) {
    edit.state.when(
      notEditing: () {},
      editing: (editing) {
        edit.state = const StateEdit.notEditing();
      },
    );
  }

  static void commitEdit(
    StateController<ClassesRepo> repo,
    StateController<StateClasses> classes,
    StateController<StateEdit> edit,
  ) {
    edit.state.when(
      notEditing: () {},
      editing: (editing) {
        classes.state.when(
          loading: () {},
          loaded: (oldClasses) {
            var newClasses =
                oldClasses.copyWith(classes: {...oldClasses.classes});

            if (editing.title.isEmpty && editing.room.isEmpty) {
              repo.state.deleteClass(editing.key);
              newClasses.classes.remove(editing.key);
            } else {
              var newDetails = ClassDetails(editing.title, editing.room);
              repo.state.updateClass(editing.key, newDetails);
              newClasses.classes[editing.key] = newDetails;
            }

            classes.state = StateClasses.loaded(newClasses);
          },
        );
        edit.state = const StateEdit.notEditing();
      },
    );
  }
}
