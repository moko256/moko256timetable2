import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moko256timetable2/app_locale.dart';
import 'package:moko256timetable2/dialog_term_edit.dart';
import 'package:moko256timetable2/model_import_repo.dart';
import 'package:moko256timetable2/model_import_repo_impl.dart';
import 'package:moko256timetable2/model_main_vo.dart';
import 'package:moko256timetable2/model_view_main.dart';

class SceneTermsList extends ConsumerWidget {
  const SceneTermsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(ModelViewMain.stateProvider);
    var controller = ref.watch(ModelViewMain.controllerProvider);

    List<MapEntry<ModelVoTermKey, ModelVoTermInfo>> termsList = state.terms
        .when((terms) => terms.terms.entries.toList(), loading: () => []);
    var currentTermKey = state.currentClasses.when(
      (classes, cellColors, termKey, termInfo) => termKey,
      notExist: () => null,
      loading: () => null,
    );

    var importKind = [
      _ImportKind(
        Icons.description,
        AppLocale.of(context).add_term_from_storage,
        ModelImportRepoJsonFromStorage(),
      ),
      _ImportKind(
        Icons.content_paste,
        AppLocale.of(context).add_term_from_clipboard,
        ModelImportRepoJsonFromClipboard(),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.of(context).terms_title),
      ),
      body: ListView.builder(
        itemCount: termsList.length + 2 + importKind.length,
        itemBuilder: (BuildContext context, int index) {
          if (index < termsList.length) {
            var term = termsList[index];
            return ListTile(
              title: Text(term.value.name),
              selected: term.key == currentTermKey,
              onTap: () {
                controller.selectTerm(term.key);
                Navigator.of(context).pop();
              },
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          content:
                              Text(AppLocale.of(context).confirm_delete_term),
                          actions: [
                            OutlinedButton(
                                child:
                                    Text(AppLocale.of(context).action_cancel),
                                onPressed: () => Navigator.of(context).pop()),
                            ElevatedButton(
                                child:
                                    Text(AppLocale.of(context).action_delete),
                                onPressed: () {
                                  controller.removeTerm(term.key);
                                  Navigator.of(context).pop();
                                }),
                          ],
                        ),
                      );
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => DialogTermEdit(
                          false,
                          term.value.name,
                          term.value.weekDays.toList(),
                          term.value.maxPeriod,
                          (arg) {
                            controller.updateTerm(
                              term.key,
                              ModelVoTermInfo(
                                arg.name,
                                arg.weekDays,
                                arg.periodMax,
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          } else if (index == termsList.length) {
            return const Divider();
          } else if (index == termsList.length + 1) {
            return ListTile(
              leading: const Icon(Icons.add),
              title: Text(AppLocale.of(context).add_term_new),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) => DialogTermEdit(
                    true,
                    "",
                    const [],
                    0,
                    (arg) {
                      controller.addTerm(
                        ModelVoTermInfo(arg.name, arg.weekDays, arg.periodMax),
                      );
                    },
                  ),
                );
              },
            );
          } else {
            var kind = importKind[index - termsList.length - 2];
            return ListTile(
              leading: Icon(kind.icon),
              title: Text(kind.title),
              onTap: () async {
                var success = await controller.import(kind.import);
                if (success) {
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(AppLocale.of(context).failed_to_import),
                    ),
                  );
                }
              },
            );
          }
        },
      ).build(context),
    );
  }
}

class _ImportKind {
  IconData icon;
  String title;
  ModelImportRepo import;

  _ImportKind(this.icon, this.title, this.import);
}
