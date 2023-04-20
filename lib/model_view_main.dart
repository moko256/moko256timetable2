import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moko256timetable2/model_main.dart';
import 'package:moko256timetable2/model_main_repo_impl.dart';
import 'package:moko256timetable2/model_main_vo.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'model_view_main.freezed.dart';

@freezed
class CurrentClassesVmState with _$CurrentClassesVmState {
  const factory CurrentClassesVmState(
    ModelVoClasses classes,
    Map<ModelVoClassInfo, double> cellColors,
    ModelVoTermKey termKey,
    ModelVoTermInfo termInfo,
  ) = _CurrentClasses;
  const factory CurrentClassesVmState.notExist() = _ClassesIsNotExist;
  const factory CurrentClassesVmState.loading() = _ClassesIsLoading;
}

@freezed
class TermsVmState with _$TermsVmState {
  const factory TermsVmState(ModelVoTerms terms) = _Terms;
  const factory TermsVmState.loading() = _TermsIsLoading;
}

@freezed
class ModelViewMainState with _$ModelViewMainState {
  const factory ModelViewMainState(
    CurrentClassesVmState currentClasses,
    TermsVmState terms,
  ) = _ModelViewMainState;
}

class ModelViewMain {
  static final _modelStateProvider =
      StateNotifierProvider<ModelMain, ModelState>(
          (ref) => ModelMain(ModelMainRepoImpl()));
  static final _modelControllerProvider = _modelStateProvider.notifier;

  static var stateProvider = Provider((ref) {
    var modelState = ref.watch(_modelStateProvider);

    var currentClasses = const CurrentClassesVmState.loading();
    var terms = const TermsVmState.loading();

    var modelTerms = modelState.terms;
    var modelCurrentClasses = modelState.currentClasses;

    if (modelTerms != null) {
      terms = TermsVmState(modelTerms);

      if (modelCurrentClasses != null) {
        var currentTermKey = modelState.currentTermKey;
        if (currentTermKey != null) {
          var term = modelTerms.terms[currentTermKey]!;
          term = term.copyWith(
              weekDays: [...term.weekDays]
                  .sorted((a, b) => a.index.compareTo(b.index)));
          currentClasses = CurrentClassesVmState(
            modelCurrentClasses,
            _generateCellColors(term, modelCurrentClasses),
            currentTermKey,
            term,
          );
        }
      } else if (modelTerms.terms.isEmpty) {
        currentClasses = const CurrentClassesVmState.notExist();
      }
    }

    return ModelViewMainState(currentClasses, terms);
  });

  static var controllerProvider = _modelControllerProvider;

  static Map<ModelVoClassInfo, double> _generateCellColors(
    ModelVoTermInfo info,
    ModelVoClasses classesMap,
  ) {
    var classes = classesMap.classes;

    var weekDays = info.weekDays;

    var order = classes.map(
      (key, value) => MapEntry(
        value,
        (weekDays.indexOf(key.weekDay) + 1) * (key.period + 1),
      ),
    );

    var orderSorted = order.entries.toList();
    orderSorted.sort((a, b) => a.value.compareTo(b.value));

    var colorsIndex = -1;
    Map<ModelVoClassInfo, double> colors = Map.fromIterable(
      orderSorted,
      key: (i) => i.key,
      value: (i) {
        colorsIndex += 1;
        return colorsIndex / orderSorted.length;
      },
    );

    return colors;
  }
}
