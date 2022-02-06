import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moko256timetable2/app_locale.dart';
import 'package:moko256timetable2/weekdays.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'dialog_term_edit.freezed.dart';

@freezed
class DialogTermEditContent with _$DialogTermEditContent {
  const factory DialogTermEditContent(
    String name,
    List<WeekDay> weekDays,
    int periodMax,
  ) = _DialogTermEditContent;
}

final dialogTermEditModel = StateProvider.autoDispose
    .family<DialogTermEditContent, DialogTermEditContent>((ref, arg) => arg);

@immutable
class DialogTermEdit extends ConsumerWidget {
  final bool forCreateNew;
  final String initialName;
  final int initialMaxPeriod;
  final List<WeekDay> initialWeekDays;
  final void Function(DialogTermEditContent) callback;

  const DialogTermEdit(this.forCreateNew, this.initialName,
      this.initialWeekDays, this.initialMaxPeriod, this.callback,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var modelProvider = dialogTermEditModel(
        DialogTermEditContent(initialName, initialWeekDays, initialMaxPeriod));
    var model = ref.watch(modelProvider.notifier);
    var weekDays = ref.watch(modelProvider.select((value) => value.weekDays));
    var periodMax = ref.watch(modelProvider.select((value) => value.periodMax));

    var weekDayNames =
        AppLocale.getCurrentDateFormat(context).dateSymbols.SHORTWEEKDAYS;

    return AlertDialog(
      title: Text(forCreateNew
          ? AppLocale.of(context).edit_term_info_new
          : AppLocale.of(context).edit_term_info_update),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: TextEditingController(text: initialName),
              decoration:
                  InputDecoration(hintText: AppLocale.of(context).term_name),
              onChanged: (text) {
                model.state = model.state.copyWith(name: text);
              },
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: Text(periodMax.toString())),
                IconButton(
                    onPressed: () => model.state =
                        model.state.copyWith(periodMax: periodMax - 1),
                    icon: const Icon(Icons.remove)),
                IconButton(
                    onPressed: () => model.state =
                        model.state.copyWith(periodMax: periodMax + 1),
                    icon: const Icon(Icons.add)),
              ],
            ),
            const Divider(),
            const SizedBox(height: 8),
            Wrap(
              children: [
                for (WeekDay weekDay in WeekDay.values)
                  FilterChip(
                    label: Text(weekDayNames[weekDay.index]),
                    showCheckmark: false,
                    selected: weekDays.contains(weekDay),
                    onSelected: (bool selected) {
                      if (selected) {
                        var newWeekDays = [...weekDays, weekDay];
                        model.state =
                            model.state.copyWith(weekDays: newWeekDays);
                      } else {
                        var newWeekDays = [...weekDays];
                        newWeekDays.remove(weekDay);
                        model.state =
                            model.state.copyWith(weekDays: newWeekDays);
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
            callback(model.state);
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
