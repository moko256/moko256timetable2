import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/app_locale.dart';
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

    var weekDayNames =
        AppLocale.getCurrentDateFormat(context).dateSymbols.SHORTWEEKDAYS;

    return AlertDialog(
      title: Text(editing.key == null
          ? AppLocale.of(context).edit_term_info_new
          : AppLocale.of(context).edit_term_info_update),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: TextEditingController(text: editing.initialName),
              decoration:
                  InputDecoration(hintText: AppLocale.of(context).term_name),
              onChanged: (text) {
                model.editName(text);
              },
            ),
            const SizedBox(height: 16),
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
            ListTile(
              leading: const Icon(Icons.add),
              title: Text(AppLocale.of(context).add_term_start_at),
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
            const Divider(),
            const SizedBox(height: 8),
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
                  ),
              ],
            ),
          ],
        ),
      ),
      actions: [
        OutlinedButton(
          child: Text(AppLocale.of(context).action_cancel),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: Text(AppLocale.of(context).action_update),
          onPressed: () {
            model.commitEditing();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
