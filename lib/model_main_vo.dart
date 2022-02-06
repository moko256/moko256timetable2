import 'package:moko256timetable2/weekdays.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'model_main_vo.freezed.dart';

@freezed
class ModelVoTerms with _$ModelVoTerms {
  const factory ModelVoTerms(
    Map<ModelVoTermKey, ModelVoTermInfo> terms,
  ) = _ModelVoTerms;
}

@freezed
class ModelVoTermKey with _$ModelVoTermKey {
  const factory ModelVoTermKey(
    int id,
  ) = _ModelVoTermKey;
}

@freezed
class ModelVoTermInfo with _$ModelVoTermInfo {
  const factory ModelVoTermInfo(
    String name,
    List<WeekDay> weekDays,
    int maxPeriod,
  ) = _ModelVoTermInfo;
}

@freezed
class ModelVoClasses with _$ModelVoClasses {
  const factory ModelVoClasses(
    Map<ModelVoClassKey, ModelVoClassInfo> classes,
  ) = _ModelVoClasses;
}

@freezed
class ModelVoClassKey with _$ModelVoClassKey {
  const factory ModelVoClassKey(
    WeekDay weekDay,
    int period,
  ) = _ModelVoClassKey;
}

@freezed
class ModelVoClassInfo with _$ModelVoClassInfo {
  const factory ModelVoClassInfo(
    String name,
    String room,
  ) = _ModelVoClassInfo;
}

@freezed
class ModelVoTermAndClasses with _$ModelVoTermAndClasses {
  const factory ModelVoTermAndClasses(
    ModelVoTermInfo termInfo,
    Map<ModelVoClassKey, ModelVoClassInfo> classes,
  ) = _ModelVoTermAndClasses;
}
