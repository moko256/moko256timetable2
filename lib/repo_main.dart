import 'package:moko256timetable2/model_main.dart';

abstract class RepoMain {
  Future<EntityMainTerms?> getTerms();

  Future<EntityMainClassesMap?> getClasses(
    EntityMainTermKey key,
  );

  Future<EntityMainTermKey?> getCurrentTerm();

  Future<void> updateClass(
    EntityMainTermKey term,
    EntityMainClassWhere where,
    EntityMainClassInfo info,
  );

  Future<void> removeClass(
    EntityMainTermKey term,
    EntityMainClassWhere where,
  );

  Future<void> updateTerm(
    EntityMainTermKey key,
    EntityMainTermInfo info,
  );

  Future<EntityMainTermKey> addTermAndClasses(
    EntityMainTermInfo termInfo,
    EntityMainClassesMap classes,
  );

  Future<void> removeTerm(EntityMainTermKey key);

  Future<void> setCurrentTerm(EntityMainTermKey key);
}
