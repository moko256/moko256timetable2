import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moko256timetable2/model_import_repo.dart';
import 'package:moko256timetable2/model_main_repo.dart';
import 'package:moko256timetable2/model_main_vo.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'model_main.freezed.dart';

@freezed
class ModelState with _$ModelState {
  const factory ModelState(
    ModelVoTermKey? currentTermKey,
    ModelVoClasses? currentClasses,
    ModelVoTerms? terms,
  ) = _ModelState;
}

class ModelMain extends StateNotifier<ModelState> {
  ModelMainRepo repo;

  ModelMain(this.repo) : super(const ModelState(null, null, null)) {
    () async {
      var terms = await repo.getAllTerms();

      var currentTermKey = await repo.getCurrentTerm();

      var currentClasses = (currentTermKey != null)
          ? await repo.getClasses(currentTermKey)
          : null;

      state = state.copyWith(
        terms: terms,
        currentTermKey: currentTermKey,
        currentClasses: currentClasses,
      );
    }();
  }

  void updateClassAtCurrentTerm(
      ModelVoClassKey key, ModelVoClassInfo info) async {
    var currentTermKey = state.currentTermKey;
    if (currentTermKey == null) return;

    var classes = {...state.currentClasses?.classes ?? {}};

    if (info == const ModelVoClassInfo("", "")) {
      await repo.removeClass(currentTermKey, key);
      classes.remove(key);
    } else {
      await repo.addOrUpdateClass(currentTermKey, key, info);
      classes[key] = info;
    }

    state = state.copyWith(
      currentClasses: state.currentClasses?.copyWith(classes: classes),
    );
  }

  void addTerm(ModelVoTermInfo info) async {
    var key = await repo.addTerm(info);
    await repo.setCurrentTerm(key);

    var terms = {...state.terms?.terms ?? {}, key: info};
    state = state.copyWith(
        currentTermKey: key,
        terms: state.terms?.copyWith(terms: terms),
        currentClasses: const ModelVoClasses({}));
  }

  void updateTerm(ModelVoTermKey key, ModelVoTermInfo info) async {
    await repo.updateTerm(key, info);

    var terms = state.terms?.terms ?? {};
    terms[key] = info;
    state = state.copyWith(
        currentTermKey: key, terms: state.terms?.copyWith(terms: terms));
  }

  void removeTerm(ModelVoTermKey key) async {
    await repo.removeTerm(key);

    var terms = state.terms?.terms ?? {};
    terms.remove(key);

    if (key == state.currentTermKey) {
      if (terms.isNotEmpty) {
        var newTerm = terms.keys.first;
        await repo.setCurrentTerm(newTerm);
        var classes = await repo.getClasses(newTerm);

        state = state.copyWith(
            terms: state.terms?.copyWith(terms: terms),
            currentTermKey: newTerm,
            currentClasses: classes);
      } else {
        state = state.copyWith(
            terms: state.terms?.copyWith(terms: {}),
            currentTermKey: null,
            currentClasses: null);
      }
    } else {
      state = state.copyWith(terms: state.terms?.copyWith(terms: terms));
    }
  }

  void selectTerm(ModelVoTermKey key) async {
    await repo.setCurrentTerm(key);
    var currentClasses = await repo.getClasses(key);

    state = state.copyWith(currentTermKey: key, currentClasses: currentClasses);
  }

  Future<bool> import(ModelImportRepo importRepo) async {
    var imported = await importRepo.import();
    if (imported == null) return false;
    var classes = ModelVoClasses(imported.classes);
    var info = imported.termInfo;
    var key = await repo.addTerm(info);
    var terms = {...state.terms?.terms ?? {}, key: info};
    await repo.addOrUpdateClasses(key, classes);
    await repo.setCurrentTerm(key);
    state = state.copyWith(
      currentTermKey: key,
      currentClasses: classes,
      terms: ModelVoTerms(terms),
    );

    return true;
  }
}
