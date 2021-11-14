import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/model_main.dart';
import 'package:moko256timetable2/repo_main_cache.dart';
import 'package:moko256timetable2/repo_import.dart';
import 'package:moko256timetable2/repo_main_stub.dart';

class ModelViewMain {
  static var modelMain = Provider(
      (ref) => ModelMain(RepoMainCache(RepoMainDiskStub()), RepoMainImport()));
  static var modelMainEditClass =
      Provider((ref) => ModelMainEditClass(ref.watch(modelMain)));
  static var modelMainEditTerm =
      Provider((ref) => ModelMainEditTerm(ref.watch(modelMain)));
}
