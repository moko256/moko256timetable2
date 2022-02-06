import 'package:moko256timetable2/model_main_vo.dart';

abstract class ModelMainRepo {
  Future<ModelVoTermKey?> getCurrentTerm();
  Future<void> setCurrentTerm(ModelVoTermKey termKey);

  Future<ModelVoTerms> getAllTerms();
  Future<ModelVoTermInfo?> getTerm(ModelVoTermKey termKey);
  Future<ModelVoTermKey> addTerm(ModelVoTermInfo termInfo);
  Future<void> updateTerm(ModelVoTermKey termKey, ModelVoTermInfo termInfo);
  Future<void> removeTerm(ModelVoTermKey termKey);

  Future<ModelVoClasses?> getClasses(ModelVoTermKey termKey);
  Future<void> addOrUpdateClass(ModelVoTermKey termKey,
      ModelVoClassKey classKey, ModelVoClassInfo classValue);
  Future<void> removeClass(ModelVoTermKey termKey, ModelVoClassKey classKey);

  Future<void> addOrUpdateClasses(
      ModelVoTermKey key, ModelVoClasses classValues);
}
