import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:moko256timetable2/model_main.dart';
import 'package:moko256timetable2/model_view_main.dart';

class SceneTermEdit extends HookConsumerWidget {
  const SceneTermEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ModelMainEditTerm model = ref.watch(ModelViewMain.modelMainEditTerm);
    var editing = useStream(model.currentEditing).data;

    useEffect(() {
      return () {
        model.discardEditing();
      };
    }, ["SceneTimetablesEdit.dialogCloseHandler"]);

    if (editing == null) return Container();

    var weekDayNames = DateFormat.EEEE().dateSymbols.SHORTWEEKDAYS;

    return AlertDialog(
      title: const Text("Edit timetable details"),
      content: SizedBox(
        width: 250,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var period in editing.periods)
              ListTile(
                title: Text(
                  TimeOfDay(hour: period.inHours, minute: period.inMinutes % 60)
                      .format(context),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    model.removePeriod(period);
                  },
                ),
              ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text("Add period"),
              onTap: () {
                showTimePicker(context: context, initialTime: TimeOfDay.now())
                    .then((value) {
                  if (value != null) {
                    model.addPeriod(
                        Duration(hours: value.hour, minutes: value.minute));
                  }
                });
              },
            ),
            Wrap(
              children: [
                for (WeekDay weekDay in WeekDay.values)
                  FilterChip(
                    label: Text(weekDayNames[weekDay.index]),
                    selected: editing.weekDays.contains(weekDay),
                    onSelected: (bool selected) {
                      if (selected) {
                        model.addWeekDay(weekDay);
                      } else {
                        model.removeWeekDay(weekDay);
                      }
                    },
                  )
              ],
            ),
          ],
        ),
      ),
      actions: [
        OutlinedButton(
          child: const Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: const Text("Update"),
          onPressed: () {
            model.commitEditing();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
