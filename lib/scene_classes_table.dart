import 'dart:math';

import 'package:color_models/color_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:moko256timetable2/model_main.dart';
import 'package:moko256timetable2/model_view_main.dart';
import 'package:moko256timetable2/routes_main.dart';

class SceneClassesTable extends HookConsumerWidget {
  const SceneClassesTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ModelMain model = ref.watch(ModelViewMain.modelMain);
    var classesSnapshot = useStream(model.currentClasses);

    return Scaffold(
      appBar: AppBar(
        title: Text(classesSnapshot.data?.info.name ?? "timetables"),
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
class ComponentClassesTableOrSpinner extends HookConsumerWidget {
  const ComponentClassesTableOrSpinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ModelMain model = ref.watch(ModelViewMain.modelMain);
    AsyncSnapshot<EntityMainClasses?> classesSnapshot =
        useStream(model.currentClasses);

    ModelMainEditClass modelEdit = ref.watch(ModelViewMain.modelMainEditClass);

    var classes = classesSnapshot.data;
    if (classes != null) {
      var periods = classes.info.periods.toList();
      var weekDays = classes.info.weekDays.toList();

      var weekDayNames = DateFormat.EEEE().dateSymbols.WEEKDAYS;

      return LayoutGrid(
        columnSizes: [
          const IntrinsicContentTrackSize(),
          for (var _ in weekDays) const FlexibleTrackSize(1),
        ],
        rowSizes: [
          const IntrinsicContentTrackSize(),
          for (var _ in periods) const FlexibleTrackSize(1),
        ],
        children: [
          for (var wIdx = 0; wIdx < weekDays.length; wIdx++)
            GridPlacement(
              columnStart: wIdx + 1,
              rowStart: 0,
              child: Text(weekDayNames[weekDays[wIdx].index]),
            ),
          for (var pIdx = 0; pIdx < periods.length; pIdx++)
            GridPlacement(
              columnStart: 0,
              rowStart: pIdx + 1,
              child: Text((pIdx + 1).toString()),
            ),
          for (var pIdx = 0; pIdx < periods.length; pIdx++)
            for (var wIdx = 0; wIdx < weekDays.length; wIdx++)
              () {
                var where = EntityMainClassWhere(weekDays[wIdx], periods[pIdx]);
                var info = classes.classes.map[where];
                return GridPlacement(
                  columnStart: wIdx + 1,
                  rowStart: pIdx + 1,
                  child: SizedBox.expand(
                    child: GestureDetector(
                      child: ComponentDetails(
                        where,
                        info,
                        classes.colors[info] ?? 0.0,
                      ),
                      onTap: () {
                        modelEdit.startEditing(where);
                        RoutesMain.push(context, RoutesMain.routeEdit);
                      },
                    ),
                  ),
                );
              }(),
        ],
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}

@immutable
class ComponentDetails extends StatelessWidget {
  final EntityMainClassWhere where;
  final EntityMainClassInfo? info;
  final double colorPosition;

  const ComponentDetails(this.where, this.info, this.colorPosition);

  Color lchToRgb(double l, double c, double h) {
    var color = LabColor(l, c * cos(h), c * sin(h)).toRgbColor();
    return Color.fromARGB(color.alpha, color.red, color.green, color.blue);
  }

  @override
  Widget build(BuildContext context) {
    var info = this.info;
    if (info != null) {
      double l;
      double c;
      var h = pi * colorPosition;
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
              Text(info.name,
                  style: textStyle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              const SizedBox(height: 4),
              Text(info.room,
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
