import 'package:moko256timetable2/model_main.dart';
import 'package:moko256timetable2/repo_main.dart';

class RepoMainCache extends RepoMain {
  final RepoMain _persistent;

  RepoMainCache(this._persistent);

  Map<EntityMainTermKey, EntityMainTermInfo>? _terms;
  final Map<EntityMainTermKey, Map<EntityMainClassWhere, EntityMainClassInfo>>
      _classes = {};
  EntityMainTermKey? _currentTerm;

  @override
  Future<EntityMainTerms?> getTerms() async {
    _terms ??= {...(await _persistent.getTerms())?.terms ?? {}};
    var terms = _terms;
    if (terms != null) {
      return EntityMainTerms(
        Map.unmodifiable(terms),
      );
    } else {
      return null;
    }
  }

  @override
  Future<EntityMainClassesMap?> getClasses(
    EntityMainTermKey key,
  ) async {
    var result = _classes[key];
    if (result == null) {
      var classes = await _persistent.getClasses(key);
      if (classes != null) {
        _classes[key] = classes.map;
        return classes;
      } else {
        return null;
      }
    } else {
      return EntityMainClassesMap(result);
    }
  }

  @override
  Future<EntityMainTermKey?> getCurrentTerm() async {
    _currentTerm ??= await _persistent.getCurrentTerm();
    return _currentTerm;
  }

  @override
  Future<void> updateClass(
    EntityMainTermKey term,
    EntityMainClassWhere where,
    EntityMainClassInfo info,
  ) async {
    await _persistent.updateClass(term, where, info);
    _classes[term]?[where] = info;
  }

  @override
  Future<void> removeClass(
    EntityMainTermKey term,
    EntityMainClassWhere where,
  ) async {
    await _persistent.removeClass(term, where);
    _classes[term]?.remove(where);
  }

  @override
  Future<void> updateTerm(
    EntityMainTermKey key,
    EntityMainTermInfo info,
  ) async {
    await _persistent.updateTerm(key, info);
    _terms?[key] = info;
  }

  @override
  Future<EntityMainTermKey> addTermAndClasses(
    EntityMainTermInfo termInfo,
    EntityMainClassesMap classes,
  ) async {
    var newKey = await _persistent.addTermAndClasses(termInfo, classes);
    _terms?[newKey] = termInfo;
    _classes[newKey] = classes.map;
    return newKey;
  }

  @override
  Future<void> removeTerm(EntityMainTermKey key) async {
    await _persistent.removeTerm(key);
    _terms?.remove(key);
  }

  @override
  Future<void> setCurrentTerm(EntityMainTermKey key) async {
    await _persistent.setCurrentTerm(key);
    _currentTerm = key;
  }
}
