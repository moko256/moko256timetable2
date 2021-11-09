import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/app_locale.dart';
import 'package:moko256timetable2/model_main.dart';
import 'package:moko256timetable2/model_view_main.dart';

class SceneClassEdit extends HookConsumerWidget {
  const SceneClassEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ModelMainEditClass model = ref.watch(ModelViewMain.modelMainEditClass);
    var editing = useStream(model.currentEditing).data;

    useEffect(() {
      return () {
        model.discardEditing();
      };
    }, ["SceneClassesEdit.dialogCloseHandler"]);

    if (editing == null) return Container();
    return AlertDialog(
      title: Text(AppLocale.of(context).edit_class_info),
      content: Wrap(
        children: <Widget>[
          TextField(
            controller: TextEditingController(text: editing.initialInfo?.name),
            decoration:
                InputDecoration(hintText: AppLocale.of(context).class_name),
            onChanged: (text) {
              model.editName(text);
            },
          ),
          TextField(
            controller: TextEditingController(text: editing.initialInfo?.room),
            decoration:
                InputDecoration(hintText: AppLocale.of(context).class_room),
            onChanged: (text) {
              model.editRoom(text);
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
            model.commitEditing();
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
