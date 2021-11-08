import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moko256timetable2/scene_class_edit.dart';
import 'package:moko256timetable2/scene_classes_table.dart';
import 'package:moko256timetable2/scene_term_edit.dart';
import 'package:moko256timetable2/scene_terms_list.dart';

class RoutesMain {
  static const String routeRoot = "/";
  static const String routeEdit = "/edit";
  static const String routeTables = "/tables";
  static const String routeTablesEdit = "/tables/edit";

  static Map<String, WidgetBuilder> routes = {
    routeRoot: (BuildContext context) => const SceneClassesTable(),
    routeEdit: (BuildContext context) => const SceneClassEdit(),
    routeTables: (BuildContext context) => const SceneTermsList(),
    routeTablesEdit: (BuildContext context) => const SceneTermEdit(),
  };

  static void push(BuildContext context, String name) {
    switch (name) {
      case routeTablesEdit:
      case routeEdit:
        showDialog(
            context: context,
            builder: (BuildContext context) => (routes[name]!)(context));
        return;
      default:
        Navigator.pushNamed(context, name);
    }
  }
}
