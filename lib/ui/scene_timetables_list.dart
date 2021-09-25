import 'package:flutter/material.dart';
import 'package:moko256timetable2/ui/component_timetables_list.dart';

class SceneTimetablesList extends StatelessWidget {
  const SceneTimetablesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Timetables"),
      ),
      body: const ComponentTimetablesList(),
    );
  }
}
