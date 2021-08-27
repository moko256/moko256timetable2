import 'dart:math';

import 'package:color_models/color_models.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/features/classes/classes_behavior.dart';
import 'package:moko256timetable2/features/classes/classes_repo.dart';
import 'package:moko256timetable2/features/classes/classes_state.dart';
import 'package:moko256timetable2/features/classes_edit/classes_edit_behavior.dart';
import 'package:moko256timetable2/features/classes_edit/classes_edit_state.dart';
import 'package:moko256timetable2/features/classes_import/classes_import_behavior.dart';
import 'package:moko256timetable2/features/classes_show/classes_show_behavior.dart';
import 'package:moko256timetable2/features/classes_show/classes_show_state.dart';
import 'package:moko256timetable2/ui/class_edit/scene_classes_edit.dart';

class SceneClassesTable extends ConsumerWidget {
  const SceneClassesTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var repo = ref.watch(classesRepo);
    var classes = ref.watch(storeClasses);
    ClassesBehavior.loadClassesIfNotLoaded(repo, classes);

    print("aaaaaaa");
    return Scaffold(
      appBar: AppBar(
        title: const Text("timetable"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (item) {
              FilePicker.platform
                  .pickFiles(
                type: FileType.custom,
                allowMultiple: false,
                allowedExtensions: ["json"],
                withReadStream: true,
              )
                  .then(
                (value) {
                  var json = value?.files.first.readStream;
                  if (json != null) {
                    ClassImportBehavior.importJson(
                      repo,
                      classes,
                      json,
                    );
                  }
                },
              );
            },
            itemBuilder: (context) {
              return ["Import from file…"]
                  .map((e) => PopupMenuItem<String>(value: e, child: Text(e)))
                  .toList();
            },
          )
        ],
      ),
      body: Column(children: <Widget>[
        Divider(
          height: 1,
          color: Theme.of(context).dividerColor,
        ),
        const Expanded(child: ComponentClassesTableOrSpinner()),
      ]),
    );
  }
}

@immutable
class ComponentClassesTableOrSpinner extends ConsumerWidget {
  const ComponentClassesTableOrSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(ClassesShowBehavior.showClasses).when<Widget>(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (classesInfo, classes) => Container(
            margin: const EdgeInsets.all(2.0),
            child: Row(
              children: classesInfo.weekDays
                  .map<Widget>(
                    (weekDay) => Expanded(
                      child: Column(
                        children: List.generate(classesInfo.periodMax, (i) => i)
                            .map<Widget>(
                          (period) {
                            var key = ClassKey(weekDay, period);
                            var clazz = classes[key];
                            Widget clazzWidget;

                            clazzWidget = ComponentDetails(
                              key,
                              clazz,
                            );
                            return Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                child: GestureDetector(
                                  child: clazzWidget,
                                  onTap: () {
                                    ClassesEditBehavior.startEdit(
                                      ref.watch(classesRepo),
                                      ref.watch(storeClasses),
                                      ref.watch(storeEdit),
                                      key,
                                    );
                                    Navigator.push(
                                        context,
                                        DialogRoute(
                                            context: context,
                                            builder: (context) =>
                                                const SceneClassesEdit()));
                                  },
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        );
  }
}

@immutable
class ComponentDetails extends StatelessWidget {
  final ClassKey classKey;
  final ColorizedClassDetails? classDetails;

  const ComponentDetails(this.classKey, this.classDetails);

  Color lchToRgb(double l, double c, double h) {
    var color = LabColor(l, c * cos(h), c * sin(h)).toRgbColor();
    return Color.fromARGB(color.alpha, color.red, color.green, color.blue);
  }

  @override
  Widget build(BuildContext context) {
    var classDetails = this.classDetails;
    if (classDetails != null) {
      double l;
      double c;
      var h = pi * classDetails.color;
      if (Theme.of(context).brightness == Brightness.light) {
        l = 93.0;
        c = 46.0;
      } else {
        l = 70.0;
        c = 38.0;
      }

      var textStyle =
          Theme.of(context).textTheme.caption?.copyWith(color: Colors.black);

      return Card(
        color: lchToRgb(l, c, h),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        margin: const EdgeInsets.all(2.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(classDetails.details.title,
                  style: textStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              const SizedBox(height: 4),
              Text(classDetails.details.room,
                  style: textStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
            ],
          ),
        ),
      );
    } else {
      Color background;
      if (Theme.of(context).brightness == Brightness.light) {
        background = lchToRgb(90, 0, 0);
      } else {
        background = lchToRgb(30, 0, 0);
      }
      return Card(
        elevation: 0,
        color: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
        margin: const EdgeInsets.all(2.0),
      );
    }
  }
}
