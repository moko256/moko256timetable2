import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/features/classes/classes_repo.dart';
import 'package:moko256timetable2/features/classes/classes_state.dart';
import 'package:moko256timetable2/features/classes_edit/classes_edit_behavior.dart';
import 'package:moko256timetable2/features/classes_edit/classes_edit_state.dart';

class SceneClassesEdit extends ConsumerWidget {
  const SceneClassesEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(storeEdit).state.when<Widget>(
          notEditing: () {
            Navigator.of(context).pop();
            return const SizedBox.shrink();
          },
          editing: (editing) => AlertDialog(
            title: const Text("Edit class details"),
            content: Wrap(
              children: <Widget>[
                TextField(
                  controller: TextEditingController(text: editing.title),
                  decoration: const InputDecoration(hintText: "Title"),
                  onChanged: (text) {
                    ClassesEditBehavior.updateTitle(
                      ref.watch(classesRepo),
                      ref.watch(storeEdit),
                      text,
                    );
                  },
                ),
                TextField(
                  controller: TextEditingController(text: editing.room),
                  decoration: const InputDecoration(hintText: "Room"),
                  onChanged: (text) {
                    ClassesEditBehavior.updateRoom(
                      ref.watch(classesRepo),
                      ref.watch(storeEdit),
                      text,
                    );
                  },
                ),
              ],
            ),
            actions: [
              OutlinedButton(
                onPressed: () {
                  ClassesEditBehavior.cancelEdit(
                    ref.watch(classesRepo),
                    ref.watch(storeEdit),
                  );
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  ClassesEditBehavior.commitEdit(
                    ref.watch(classesRepo),
                    ref.watch(storeClasses),
                    ref.watch(storeEdit),
                  );
                },
                child: const Text("Update"),
              ),
            ],
          ),
        );
  }
}
