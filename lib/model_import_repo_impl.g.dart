// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_import_repo_impl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$__ImportingTimetable _$$__ImportingTimetableFromJson(
        Map<String, dynamic> json) =>
    _$__ImportingTimetable(
      _ImportingClassesInfo.fromJson(json['info'] as Map<String, dynamic>),
      (json['classes'] as List<dynamic>)
          .map((e) => _ImportingClass.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$__ImportingTimetableToJson(
        _$__ImportingTimetable instance) =>
    <String, dynamic>{
      'info': instance.info,
      'classes': instance.classes,
    };

_$__ImportingClassesInfo _$$__ImportingClassesInfoFromJson(
        Map<String, dynamic> json) =>
    _$__ImportingClassesInfo(
      json['name'] as String,
      json['periodMax'] as int,
      (json['weekDays'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$__ImportingClassesInfoToJson(
        _$__ImportingClassesInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      'periodMax': instance.periodMax,
      'weekDays': instance.weekDays,
    };

_$__ImportingClass _$$__ImportingClassFromJson(Map<String, dynamic> json) =>
    _$__ImportingClass(
      json['weekDay'] as String,
      json['period'] as int,
      json['name'] as String,
      json['room'] as String,
    );

Map<String, dynamic> _$$__ImportingClassToJson(_$__ImportingClass instance) =>
    <String, dynamic>{
      'weekDay': instance.weekDay,
      'period': instance.period,
      'name': instance.name,
      'room': instance.room,
    };
