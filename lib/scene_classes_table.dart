import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moko256timetable2/app_locale.dart';
import 'package:moko256timetable2/component_class.dart';
import 'package:moko256timetable2/component_classes_table.dart';
import 'package:moko256timetable2/dialog_class_edit.dart';
import 'package:moko256timetable2/dialog_term_edit.dart';
import 'package:moko256timetable2/model_main_vo.dart';
import 'package:moko256timetable2/model_view_main.dart';
import 'package:moko256timetable2/routes_main.dart';

class SceneClassesTable extends ConsumerWidget {
  const SceneClassesTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(ModelViewMain.stateProvider);

    var currentTermName = state.currentClasses.when(
      (classes, cellColors, termKey, termInfo) => termInfo.name,
      notExist: () => null,
      loading: () => null,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(currentTermName ?? AppLocale.of(context).app_name),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            RoutesMain.push(context, RoutesMain.routeTables);
          },
        ),
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
    var state = ref.watch(ModelViewMain.stateProvider);
    var controller = ref.watch(ModelViewMain.controllerProvider);

    return state.currentClasses.when(
      (classes, cellColors, termKey, termInfo) {
        var maxPeriod = termInfo.maxPeriod;
        var weekDays = termInfo.weekDays;

        return ComponentClassesTable(
          weekDays,
          maxPeriod,
          (weekDay, period) {
            var where = ModelVoClassKey(weekDay, period);
            var info = classes.classes[where];
            return (info == null)
                ? ComponentClass.empty()
                : ComponentClass.withDetail(
                    info.name,
                    info.room,
                    cellColors[info] ?? 0.0,
                  );
          },
          (weekDay, period) {
            var where = ModelVoClassKey(weekDay, period);
            var info = classes.classes[where];
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return DialogClassEdit(
                  info?.name ?? "",
                  info?.room ?? "",
                  (arg) {
                    controller.updateClassAtCurrentTerm(
                        where, ModelVoClassInfo(arg.name, arg.room));
                  },
                );
              },
            );
          },
        );
      },
      notExist: () {
        var dialog = DialogTermEdit(true, "", const [], 0, (arg) {
          controller
              .addTerm(ModelVoTermInfo(arg.name, arg.weekDays, arg.periodMax));
        });

        Future(() {
          showDialog(
              context: context, builder: (BuildContext context) => dialog);
        });

        return Center(
          child: ElevatedButton(
            child: Text(AppLocale.of(context).add_term_new),
            onPressed: () {
              showDialog(
                  context: context, builder: (BuildContext context) => dialog);
            },
          ),
        );
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
