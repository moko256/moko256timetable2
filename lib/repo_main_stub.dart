import 'package:moko256timetable2/model_main.dart';
import 'package:moko256timetable2/repo_main.dart';

class RepoMainDiskStub extends RepoMain {
  int _termId = 0;

  @override
  Future<EntityMainTermKey> addTermAndClasses(
      EntityMainTermInfo termInfo, EntityMainClassesMap classes) async {
    _termId++;
    return EntityMainTermKey(_termId);
  }

  @override
  Future<EntityMainClassesMap> getClasses(EntityMainTermKey key) async {
    return EntityMainClassesMap({});
  }

  @override
  Future<EntityMainTermKey?> getCurrentTerm() async {}

  @override
  Future<EntityMainTerms?> getTerms() async {}

  @override
  Future<void> removeClass(
      EntityMainTermKey term, EntityMainClassWhere where) async {}

  @override
  Future<void> removeTerm(EntityMainTermKey key) async {}

  @override
  Future<void> setCurrentTerm(EntityMainTermKey key) async {}

  @override
  Future<void> updateClass(EntityMainTermKey term, EntityMainClassWhere where,
      EntityMainClassInfo info) async {}

  @override
  Future<EntityMainTermKey> addTerm(EntityMainTermInfo info) async {
    _termId++;
    return EntityMainTermKey(_termId);
  }

  @override
  Future<void> updateTerm(
      EntityMainTermKey key, EntityMainTermInfo info) async {}
}
