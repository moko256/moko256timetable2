import 'package:flutter/material.dart';
import 'package:moko256timetable2/scene_classes_table.dart';
import 'package:moko256timetable2/scene_terms_list.dart';

class RoutesMain {
  static const String routeRoot = "/";
  static const String routeTables = "/tables";

  static Map<String, WidgetBuilder> routes = {
    routeRoot: (BuildContext context) => const SceneClassesTable(),
    routeTables: (BuildContext context) => const SceneTermsList(),
  };

  static void push(BuildContext context, String name) {
    Navigator.pushNamed(context, name);
  }
}
