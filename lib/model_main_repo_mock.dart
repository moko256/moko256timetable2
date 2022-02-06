import 'package:moko256timetable2/model_main_vo.dart';

import 'model_main_repo.dart';

class ModelMainRepoMock extends ModelMainRepo {
  ModelMainRepoMock();

  final Map<ModelVoTermKey, ModelVoTermInfo> _terms = {};
  final Map<ModelVoTermKey, Map<ModelVoClassKey, ModelVoClassInfo>> _classes =
      {};
  ModelVoTermKey? _currentTerm;
  int nextTermKey = 0;

  @override
  Future<ModelVoTermKey?> getCurrentTerm() async {
    return _currentTerm;
  }

  @override
  Future<void> setCurrentTerm(ModelVoTermKey termKey) async {
    _currentTerm = termKey;
  }

  @override
  Future<ModelVoTerms> getAllTerms() async {
    return ModelVoTerms(_terms);
  }

  @override
  Future<ModelVoTermInfo?> getTerm(ModelVoTermKey termKey) async {
    return _terms[termKey];
  }

  @override
  Future<ModelVoTermKey> addTerm(ModelVoTermInfo termInfo) async {
    var newKey = ModelVoTermKey(nextTermKey);
    nextTermKey++;
    _terms[newKey] = termInfo;
    _classes[newKey] = {};
    return newKey;
  }

  @override
  Future<void> updateTerm(
      ModelVoTermKey termKey, ModelVoTermInfo termInfo) async {
    _terms[termKey] = termInfo;
  }

  @override
  Future<void> removeTerm(ModelVoTermKey termKey) async {
    _terms.remove(termKey);
  }

  @override
  Future<ModelVoClasses?> getClasses(ModelVoTermKey termKey) async {
    var classes = _classes[termKey];
    return (classes != null) ? ModelVoClasses(classes) : null;
  }

  @override
  Future<void> addOrUpdateClass(ModelVoTermKey termKey,
      ModelVoClassKey classKey, ModelVoClassInfo classValue) async {
    _classes[termKey]?[classKey] = classValue;
  }

  @override
  Future<void> removeClass(
      ModelVoTermKey termKey, ModelVoClassKey classKey) async {
    _classes[termKey]?.remove(classKey);
  }

  @override
  Future<void> addOrUpdateClasses(
      ModelVoTermKey key, ModelVoClasses classValues) async {
    _classes[key] = classValues.classes;
  }
}
