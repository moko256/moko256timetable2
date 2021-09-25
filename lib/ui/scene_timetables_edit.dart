import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SceneTimetablesEdit extends StatelessWidget {
  const SceneTimetablesEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Edit timetable details"),
      content: SizedBox(
        width: 250,
        child: ListView(
          shrinkWrap: true,
          children: const [
            ListTile(
              title: Text("09:50"),
              trailing: Icon(Icons.close),
            ),
            ListTile(
              title: Text("10:30"),
              trailing: Icon(Icons.close),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add period"),
            ),
          ],
        ),
      ),
      actions: [
        OutlinedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Update"),
        ),
      ],
    );
  }
}
