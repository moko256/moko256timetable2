import 'package:moko256timetable2/model_main.dart';

class RepoMain {
  final Map<EntityMainTermKey, EntityMainTermInfo> _terms = {
    EntityMainTermKey(0): EntityMainTermInfo(
      "Class A1",
      {const Duration(hours: 8), const Duration(hours: 10)},
      {WeekDay.mon, WeekDay.tue, WeekDay.wed, WeekDay.thu, WeekDay.fri},
    ),
    EntityMainTermKey(1): EntityMainTermInfo(
      "Class B1",
      {const Duration(hours: 8), const Duration(hours: 10)},
      {WeekDay.mon, WeekDay.tue, WeekDay.wed, WeekDay.thu, WeekDay.fri},
    ),
  };
  final Map<EntityMainTermKey, Map<EntityMainClassWhere, EntityMainClassInfo>>
      _classes = {
    EntityMainTermKey(0): {
      EntityMainClassWhere(WeekDay.mon, const Duration(hours: 8)):
          EntityMainClassInfo("name", "room"),
    },
    EntityMainTermKey(1): {
      EntityMainClassWhere(WeekDay.mon, const Duration(hours: 8)):
          EntityMainClassInfo("name", "room"),
    }
  };
  EntityMainTermKey _currentTerm = EntityMainTermKey(0);

  Future<EntityMainTerms?> getTerms() async {
    return EntityMainTerms(
      Map.unmodifiable(_terms),
      _currentTerm,
    );
  }

  Future<EntityMainClassesMap?> getClasses(
    EntityMainTermKey key,
  ) async {
    var result = _classes[key];
    if (result == null) {
      return null;
    } else {
      return EntityMainClassesMap(result);
    }
  }

  Future<EntityMainTermKey?> getCurrentTerm() async {
    return _currentTerm;
  }

  Future<void> updateClass(
    EntityMainTermKey term,
    EntityMainClassWhere where,
    EntityMainClassInfo info,
  ) async {
    _classes[term]?[where] = info;
  }

  Future<void> removeClass(
    EntityMainTermKey term,
    EntityMainClassWhere where,
  ) async {
    _classes[term]?.remove(where);
  }

  Future<void> updateTerm(
    EntityMainTermKey key,
    EntityMainTermInfo info,
  ) async {
    _terms[key] = info;
  }

  Future<EntityMainTermKey> addTermAndClasses(
    EntityMainTermInfo termInfo,
    EntityMainClassesMap classes,
  ) async {
    var newKey = EntityMainTermKey(_terms.length);
    _terms[newKey] = termInfo;
    _classes[newKey] = classes.map;
    return newKey;
  }

  Future<void> removeTerm(EntityMainTermKey key) async {
    _terms.remove(key);
  }

  Future<void> setCurrentTerm(EntityMainTermKey key) async {
    _currentTerm = key;
  }
}
