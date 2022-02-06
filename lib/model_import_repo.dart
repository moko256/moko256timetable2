import 'package:moko256timetable2/model_main_vo.dart';

abstract class ModelImportRepo {
  Future<ModelVoTermAndClasses?> import();
}
