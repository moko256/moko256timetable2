import 'package:flutter/material.dart';
import 'package:moko256timetable2/ui/scene_timetables_edit.dart';

class ComponentTimetablesList extends StatelessWidget {
  const ComponentTimetablesList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: const Text("Class 1-A"),
          selected: true,
          onTap: () {},
        ),
        ListTile(
          title: const Text("Class 1-B"),
          selected: false,
          onTap: () {
            Navigator.push(
              context,
              DialogRoute(
                context: context,
                builder: (context) => const SceneTimetablesEdit(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.add),
          title: const Text("Create new timetable"),
          selected: false,
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.download_rounded),
          title: const Text("Import from storage"),
          selected: false,
          onTap: () {},
        ),
      ],
    );
  }
}
