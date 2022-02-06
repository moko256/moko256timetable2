import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moko256timetable2/app_locale.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'dialog_class_edit.freezed.dart';

@freezed
class DialogClassEditArg with _$DialogClassEditArg {
  const factory DialogClassEditArg(
    String name,
    String room,
  ) = _SceneClassEditArg;
}

@freezed
class DialogClassEditCallbackArg with _$DialogClassEditCallbackArg {
  const factory DialogClassEditCallbackArg(
    String name,
    String room,
  ) = _SceneClassEditCallbackArg;
}

final dialogClassEditModel = StateProvider.autoDispose
    .family<DialogClassEditCallbackArg, DialogClassEditArg>((ref, arg) {
  return DialogClassEditCallbackArg(
    arg.name,
    arg.room,
  );
});

@immutable
class DialogClassEdit extends ConsumerWidget {
  final String name;
  final String room;
  final void Function(DialogClassEditCallbackArg) callback;

  const DialogClassEdit(this.name, this.room, this.callback, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref
        .watch(dialogClassEditModel(DialogClassEditArg(name, room)).notifier);

    return AlertDialog(
      title: Text(AppLocale.of(context).edit_class_info),
      content: Wrap(
        children: <Widget>[
          TextField(
            controller: TextEditingController(text: model.state.name),
            decoration:
                InputDecoration(hintText: AppLocale.of(context).class_name),
            onChanged: (text) {
              model.state = model.state.copyWith(name: text);
            },
          ),
          TextField(
            controller: TextEditingController(text: model.state.room),
            decoration:
                InputDecoration(hintText: AppLocale.of(context).class_room),
            onChanged: (text) {
              model.state = model.state.copyWith(room: text);
            },
          ),
        ],
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
