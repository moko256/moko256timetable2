import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/app_locale.dart';
import 'package:moko256timetable2/model_main.dart';
import 'package:moko256timetable2/model_view_main.dart';
import 'package:moko256timetable2/routes_main.dart';

class SceneTermsList extends HookConsumerWidget {
  const SceneTermsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ModelMain model = ref.watch(ModelViewMain.modelMain);
    AsyncSnapshot<EntityMainTermsAndCurrent?> termsSnapshot =
        useStream(model.terms);

    ModelMainEditTerm modelEdit = ref.watch(ModelViewMain.modelMainEditTerm);

    var terms = termsSnapshot.data;
    List<MapEntry<EntityMainTermKey, EntityMainTermInfo>> termsList =
        terms?.terms?.entries.toList() ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.of(context).terms_title),
      ),
      body: ListView.builder(
        itemCount: termsList.length + 2,
        itemBuilder: (BuildContext context, int index) {
          if (index < termsList.length) {
            var term = termsList[index];
            return ListTile(
              title: Text(term.value.name),
              selected: term.key == terms?.currentTerm,
              onTap: () {
                model.selectTerm(term.key);
                Navigator.of(context).pop();
              },
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  modelEdit.startEditing(term.key);
                  RoutesMain.push(context, RoutesMain.routeTablesEdit);
                },
              ),
            );
          } else if (index == termsList.length) {
            return ListTile(
              leading: const Icon(Icons.add),
              title: Text(AppLocale.of(context).add_term_new),
              selected: false,
              onTap: () {
                modelEdit.startEditing(null);
                RoutesMain.push(context, RoutesMain.routeTablesEdit);
              },
            );
          } else {
            return ListTile(
              leading: const Icon(Icons.download_rounded),
              title: Text(AppLocale.of(context).add_term_from_storage),
              selected: false,
              onTap: () {
                model.startImport().then((success) {
                  if (success) {
                    Navigator.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppLocale.of(context).failed_to_import),
                      ),
                    );
                  }
                });
              },
            );
          }
        },
      ).build(context),
    );
  }
}
