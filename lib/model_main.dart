import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moko256timetable2/repo_main_cache.dart';
import 'package:moko256timetable2/repo_import.dart';
import 'package:rxdart/rxdart.dart';

part 'model_main.freezed.dart';

class ModelMain {
  final BehaviorSubject<EntityMainClasses?> _currentClasses =
      BehaviorSubject.seeded(null);
  Stream<EntityMainClasses?> get currentClasses => _currentClasses;

  final PublishSubject<void> _termsUpdate = PublishSubject();
  final BehaviorSubject<EntityMainTermsAndCurrent?> _terms = BehaviorSubject.seeded(null);
  Stream<EntityMainTermsAndCurrent?> get terms => _terms;

  final PublishSubject<void> _currentClassesMapUpdate = PublishSubject();

  RepoMainCache repo;
  RepoMainImport repoImport;
  bool loaded = false;

  ModelMain(this.repo, this.repoImport) {
    _termsUpdate.listen((_) async {
      var terms = await repo.getTerms();
      var currentTerm = await repo.getCurrentTerm();

      _terms.add(EntityMainTermsAndCurrent(terms?.terms, currentTerm));
      _currentClassesMapUpdate.add(null);
    });

    _currentClassesMapUpdate.listen((_) async {
      var terms = await repo.getTerms();
      if (terms == null) return;

      var key = await repo.getCurrentTerm();
      if (key == null) return;

      var classes = await repo.getClasses(key);
      if (classes == null) return;

      var currentTerm = terms.terms[key];
      if (currentTerm == null) return;

      _currentClasses.add(
        EntityMainClasses(
          key,
          currentTerm,
          classes,
          _generateCellColors(currentTerm, classes),
        ),
      );
    });

    _loadFirst();
  }

  Future<void> _loadFirst() async {
    if (loaded) return;

    _termsUpdate.add(null);

    loaded = true;
  }

  void updateClass(EntityMainClassWhere where, EntityMainClassInfo info) async {
    var key = await repo.getCurrentTerm();
    if (key == null) return;
    await repo.updateClass(key, where, info);
    _currentClassesMapUpdate.add(null);
  }

  void removeClass(EntityMainClassWhere where) async {
    var key = await repo.getCurrentTerm();
    if (key == null) return;
    await repo.removeClass(key, where);
    _currentClassesMapUpdate.add(null);
  }

  void updateTerm(EntityMainTermKey key, EntityMainTermInfo info) async {
    await repo.updateTerm(key, info);
    _termsUpdate.add(null);
  }

  void removeTerm(EntityMainTermKey key) async {
    await repo.removeTerm(key);
    _termsUpdate.add(null);
  }

  void selectTerm(EntityMainTermKey key) async {
    await repo.setCurrentTerm(key);
    _termsUpdate.add(null);
  }

  Future<bool> startImport() async {
    var newTerm = await repoImport.importJson();
    if (newTerm == null) return false;

    var newKey = await repo.addTermAndClasses(newTerm.info, newTerm.classes);
    await repo.setCurrentTerm(newKey);

    _termsUpdate.add(null);
    return true;
  }
}

class ModelMainEditClass {
  final BehaviorSubject<EntityMainClassEditing?> _currentEditing =
      BehaviorSubject.seeded(null);
  Stream<EntityMainClassEditing?> get currentEditing => _currentEditing;

  ModelMain model;

  String? _editingName;
  String? _editingRoom;

  ModelMainEditClass(this.model);

  void startEditing(EntityMainClassWhere where) {
    model.currentClasses.first.then((value) {
      var info = value?.classes.map[where];
      _currentEditing.add(EntityMainClassEditing(where, info));

      _editingName = info?.name;
      _editingRoom = info?.room;
    });
  }

  void editName(String name) {
    var currentEditing = _currentEditing.valueOrNull;
    if (currentEditing != null) {
      _editingName = name;
    }
  }

  void editRoom(String room) {
    var currentEditing = _currentEditing.valueOrNull;
    if (currentEditing != null) {
      _editingRoom = room;
    }
  }

  void commitEditing() {
    var where = _currentEditing.valueOrNull?.where;
    if (where == null) return;

    var willRemove =
        !(_editingName?.isNotEmpty == true || _editingRoom?.isNotEmpty == true);

    if (willRemove) {
      model.removeClass(where);
    } else {
      model.updateClass(
          where, EntityMainClassInfo(_editingName ?? "", _editingRoom ?? ""));
    }
    _currentEditing.add(null);
    _editingName = null;
    _editingRoom = null;
  }

  void discardEditing() {
    _currentEditing.add(null);
    _editingName = null;
    _editingRoom = null;
  }
}

class ModelMainEditTerm {
  final BehaviorSubject<EntityMainTermEditing?> _currentEditing =
      BehaviorSubject.seeded(null);
  Stream<EntityMainTermEditing?> get currentEditing => _currentEditing;

  ModelMain model;

  String? _editingName;

  ModelMainEditTerm(this.model);

  void startEditing(EntityMainTermKey key) {
    model.terms.first.then((value) {
      var info = value?.terms?[key];
      _currentEditing.add(
        EntityMainTermEditing(
            key, info?.name, info?.periods ?? {}, info?.weekDays ?? {}),
      );

      _editingName = info?.name;
    });
  }

  void editName(String name) {
    var currentEditing = _currentEditing.valueOrNull;
    if (currentEditing != null) {
      _editingName = name;
    }
  }

  void addPeriod(Duration period) {
    var editing = _currentEditing.valueOrNull;
    if (editing != null) {
      var newPeriods = {...editing.periods, period};
      _currentEditing.add(editing.copyWith(periods: newPeriods));
    }
  }

  void removePeriod(Duration period) {
    var editing = _currentEditing.valueOrNull;
    if (editing != null) {
      var newPeriods = {...editing.periods};
      newPeriods.remove(period);
      _currentEditing.add(editing.copyWith(periods: newPeriods));
    }
  }

  void addWeekDay(WeekDay weekDay) {
    var editing = _currentEditing.valueOrNull;
    if (editing != null) {
      var newWeekDays = {...editing.weekDays, weekDay};
      _currentEditing.add(editing.copyWith(weekDays: newWeekDays));
    }
  }

  void removeWeekDay(WeekDay weekDay) {
    var editing = _currentEditing.valueOrNull;
    if (editing != null) {
      var newWeekDays = {...editing.weekDays};
      newWeekDays.remove(weekDay);
      _currentEditing.add(editing.copyWith(weekDays: newWeekDays));
    }
  }

  void commitEditing() {
    var editing = _currentEditing.valueOrNull;
    var key = editing?.key;

    if (key == null) return;

    model.updateTerm(
      key,
      EntityMainTermInfo(
          _editingName ?? "", editing?.periods ?? {}, editing?.weekDays ?? {}),
    );

    _currentEditing.add(null);
    _editingName = null;
  }

  void discardEditing() {
    _currentEditing.add(null);
    _editingName = null;
  }
}

Map<EntityMainClassInfo, double> _generateCellColors(
  EntityMainTermInfo info,
  EntityMainClassesMap classesMap,
) {
  var classes = classesMap.map;

  var weekDays = info.weekDays.toList();
  var periods = info.periods.toList();

  var order = classes.map(
    (key, value) => MapEntry(
      value,
      (weekDays.indexOf(key.weekDay) + 1) * (periods.indexOf(key.period) + 1),
    ),
  );

  var orderSorted = order.entries.toList();
  orderSorted.sort((a, b) => a.value.compareTo(b.value));

  var colorsIndex = -1;
  Map<EntityMainClassInfo, double> colors = Map.fromIterable(
    orderSorted,
    key: (i) => i.key,
    value: (i) {
      colorsIndex += 1;
      return colorsIndex / orderSorted.length;
    },
  );
  return colors;
}

enum WeekDay { sun, mon, tue, wed, thu, fri, sat }

@freezed
class EntityMainClassInfo with _$EntityMainClassInfo {
  factory EntityMainClassInfo(
    String name,
    String room,
  ) = _EntityMainClassInfo;
}

@freezed
class EntityMainClassWhere with _$EntityMainClassWhere {
  factory EntityMainClassWhere(
    WeekDay weekDay,
    Duration period,
  ) = _EntityMainClassWhere;
}

@freezed
class EntityMainClassEditing with _$EntityMainClassEditing {
  factory EntityMainClassEditing(
    EntityMainClassWhere where,
    EntityMainClassInfo? initialInfo,
  ) = _EntityMainClassEditing;
}

@freezed
class EntityMainClassesMap with _$EntityMainClassesMap {
  factory EntityMainClassesMap(
    Map<EntityMainClassWhere, EntityMainClassInfo> map,
  ) = _EntityMainClassesMap;
}

@freezed
class EntityMainClassesImport with _$EntityMainClassesImport {
  factory EntityMainClassesImport(
    EntityMainTermInfo info,
    EntityMainClassesMap classes,
  ) = _EntityMainClassesImport;
}

@freezed
class EntityMainClasses with _$EntityMainClasses {
  factory EntityMainClasses(
    EntityMainTermKey key,
    EntityMainTermInfo info,
    EntityMainClassesMap classes,
    Map<EntityMainClassInfo, double> colors,
  ) = _EntityMainClasses;
}

@freezed
class EntityMainTermInfo with _$EntityMainTermInfo {
  factory EntityMainTermInfo(
    String name,
    Set<Duration> periods,
    Set<WeekDay> weekDays,
  ) = _EntityMainTermInfo;
}

@freezed
class EntityMainTermKey with _$EntityMainTermKey {
  factory EntityMainTermKey(int id) = _EntityMainTermKey;
}

@freezed
class EntityMainTerm with _$EntityMainTerm {
  factory EntityMainTerm(
    EntityMainTermKey key,
    EntityMainTermInfo value,
  ) = _EntityMainTerm;
}

@freezed
class EntityMainTerms with _$EntityMainTerms {
  factory EntityMainTerms(
    Map<EntityMainTermKey, EntityMainTermInfo> terms,
  ) = _EntityMainTerms;
}

@freezed
class EntityMainTermsAndCurrent with _$EntityMainTermsAndCurrent {
  factory EntityMainTermsAndCurrent(
    Map<EntityMainTermKey, EntityMainTermInfo>? terms,
    EntityMainTermKey? currentTerm,
  ) = _EntityMainTermsAndCurrent;
}

@freezed
class EntityMainTermEditing with _$EntityMainTermEditing {
  factory EntityMainTermEditing(
    EntityMainTermKey key,
    String? initialName,
    Set<Duration> periods,
    Set<WeekDay> weekDays,
  ) = _EntityMainTermEditing;
}
