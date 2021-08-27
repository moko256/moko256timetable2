// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classes_import_behavior.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

_ImportingTimetable _$_ImportingTimetableFromJson(Map<String, dynamic> json) {
  return __ImportingTimetable.fromJson(json);
}

/// @nodoc
class _$_ImportingTimetableTearOff {
  const _$_ImportingTimetableTearOff();

  __ImportingTimetable call(
      _ImportingClassesInfo info, List<_ImportingClass> classes) {
    return __ImportingTimetable(
      info,
      classes,
    );
  }

  _ImportingTimetable fromJson(Map<String, Object> json) {
    return _ImportingTimetable.fromJson(json);
  }
}

/// @nodoc
const _$ImportingTimetable = _$_ImportingTimetableTearOff();

/// @nodoc
mixin _$_ImportingTimetable {
  _ImportingClassesInfo get info => throw _privateConstructorUsedError;
  List<_ImportingClass> get classes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ImportingTimetableCopyWith<_ImportingTimetable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImportingTimetableCopyWith<$Res> {
  factory _$ImportingTimetableCopyWith(
          _ImportingTimetable value, $Res Function(_ImportingTimetable) then) =
      __$ImportingTimetableCopyWithImpl<$Res>;
  $Res call({_ImportingClassesInfo info, List<_ImportingClass> classes});

  _$ImportingClassesInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$ImportingTimetableCopyWithImpl<$Res>
    implements _$ImportingTimetableCopyWith<$Res> {
  __$ImportingTimetableCopyWithImpl(this._value, this._then);

  final _ImportingTimetable _value;
  // ignore: unused_field
  final $Res Function(_ImportingTimetable) _then;

  @override
  $Res call({
    Object? info = freezed,
    Object? classes = freezed,
  }) {
    return _then(_value.copyWith(
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as _ImportingClassesInfo,
      classes: classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<_ImportingClass>,
    ));
  }

  @override
  _$ImportingClassesInfoCopyWith<$Res> get info {
    return _$ImportingClassesInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$_ImportingTimetableCopyWith<$Res>
    implements _$ImportingTimetableCopyWith<$Res> {
  factory _$_ImportingTimetableCopyWith(__ImportingTimetable value,
          $Res Function(__ImportingTimetable) then) =
      __$_ImportingTimetableCopyWithImpl<$Res>;
  @override
  $Res call({_ImportingClassesInfo info, List<_ImportingClass> classes});

  @override
  _$ImportingClassesInfoCopyWith<$Res> get info;
}

/// @nodoc
class __$_ImportingTimetableCopyWithImpl<$Res>
    extends __$ImportingTimetableCopyWithImpl<$Res>
    implements _$_ImportingTimetableCopyWith<$Res> {
  __$_ImportingTimetableCopyWithImpl(
      __ImportingTimetable _value, $Res Function(__ImportingTimetable) _then)
      : super(_value, (v) => _then(v as __ImportingTimetable));

  @override
  __ImportingTimetable get _value => super._value as __ImportingTimetable;

  @override
  $Res call({
    Object? info = freezed,
    Object? classes = freezed,
  }) {
    return _then(__ImportingTimetable(
      info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as _ImportingClassesInfo,
      classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<_ImportingClass>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__ImportingTimetable implements __ImportingTimetable {
  _$__ImportingTimetable(this.info, this.classes);

  factory _$__ImportingTimetable.fromJson(Map<String, dynamic> json) =>
      _$$__ImportingTimetableFromJson(json);

  @override
  final _ImportingClassesInfo info;
  @override
  final List<_ImportingClass> classes;

  @override
  String toString() {
    return '_ImportingTimetable(info: $info, classes: $classes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is __ImportingTimetable &&
            (identical(other.info, info) ||
                const DeepCollectionEquality().equals(other.info, info)) &&
            (identical(other.classes, classes) ||
                const DeepCollectionEquality().equals(other.classes, classes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(info) ^
      const DeepCollectionEquality().hash(classes);

  @JsonKey(ignore: true)
  @override
  _$_ImportingTimetableCopyWith<__ImportingTimetable> get copyWith =>
      __$_ImportingTimetableCopyWithImpl<__ImportingTimetable>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ImportingTimetableToJson(this);
  }
}

abstract class __ImportingTimetable implements _ImportingTimetable {
  factory __ImportingTimetable(
          _ImportingClassesInfo info, List<_ImportingClass> classes) =
      _$__ImportingTimetable;

  factory __ImportingTimetable.fromJson(Map<String, dynamic> json) =
      _$__ImportingTimetable.fromJson;

  @override
  _ImportingClassesInfo get info => throw _privateConstructorUsedError;
  @override
  List<_ImportingClass> get classes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$_ImportingTimetableCopyWith<__ImportingTimetable> get copyWith =>
      throw _privateConstructorUsedError;
}

_ImportingClassesInfo _$_ImportingClassesInfoFromJson(
    Map<String, dynamic> json) {
  return __ImportingClassesInfo.fromJson(json);
}

/// @nodoc
class _$_ImportingClassesInfoTearOff {
  const _$_ImportingClassesInfoTearOff();

  __ImportingClassesInfo call(List<String> weekDays, int periodMax) {
    return __ImportingClassesInfo(
      weekDays,
      periodMax,
    );
  }

  _ImportingClassesInfo fromJson(Map<String, Object> json) {
    return _ImportingClassesInfo.fromJson(json);
  }
}

/// @nodoc
const _$ImportingClassesInfo = _$_ImportingClassesInfoTearOff();

/// @nodoc
mixin _$_ImportingClassesInfo {
  List<String> get weekDays => throw _privateConstructorUsedError;
  int get periodMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ImportingClassesInfoCopyWith<_ImportingClassesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImportingClassesInfoCopyWith<$Res> {
  factory _$ImportingClassesInfoCopyWith(_ImportingClassesInfo value,
          $Res Function(_ImportingClassesInfo) then) =
      __$ImportingClassesInfoCopyWithImpl<$Res>;
  $Res call({List<String> weekDays, int periodMax});
}

/// @nodoc
class __$ImportingClassesInfoCopyWithImpl<$Res>
    implements _$ImportingClassesInfoCopyWith<$Res> {
  __$ImportingClassesInfoCopyWithImpl(this._value, this._then);

  final _ImportingClassesInfo _value;
  // ignore: unused_field
  final $Res Function(_ImportingClassesInfo) _then;

  @override
  $Res call({
    Object? weekDays = freezed,
    Object? periodMax = freezed,
  }) {
    return _then(_value.copyWith(
      weekDays: weekDays == freezed
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      periodMax: periodMax == freezed
          ? _value.periodMax
          : periodMax // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$_ImportingClassesInfoCopyWith<$Res>
    implements _$ImportingClassesInfoCopyWith<$Res> {
  factory _$_ImportingClassesInfoCopyWith(__ImportingClassesInfo value,
          $Res Function(__ImportingClassesInfo) then) =
      __$_ImportingClassesInfoCopyWithImpl<$Res>;
  @override
  $Res call({List<String> weekDays, int periodMax});
}

/// @nodoc
class __$_ImportingClassesInfoCopyWithImpl<$Res>
    extends __$ImportingClassesInfoCopyWithImpl<$Res>
    implements _$_ImportingClassesInfoCopyWith<$Res> {
  __$_ImportingClassesInfoCopyWithImpl(__ImportingClassesInfo _value,
      $Res Function(__ImportingClassesInfo) _then)
      : super(_value, (v) => _then(v as __ImportingClassesInfo));

  @override
  __ImportingClassesInfo get _value => super._value as __ImportingClassesInfo;

  @override
  $Res call({
    Object? weekDays = freezed,
    Object? periodMax = freezed,
  }) {
    return _then(__ImportingClassesInfo(
      weekDays == freezed
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<String>,
      periodMax == freezed
          ? _value.periodMax
          : periodMax // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__ImportingClassesInfo implements __ImportingClassesInfo {
  _$__ImportingClassesInfo(this.weekDays, this.periodMax);

  factory _$__ImportingClassesInfo.fromJson(Map<String, dynamic> json) =>
      _$$__ImportingClassesInfoFromJson(json);

  @override
  final List<String> weekDays;
  @override
  final int periodMax;

  @override
  String toString() {
    return '_ImportingClassesInfo(weekDays: $weekDays, periodMax: $periodMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is __ImportingClassesInfo &&
            (identical(other.weekDays, weekDays) ||
                const DeepCollectionEquality()
                    .equals(other.weekDays, weekDays)) &&
            (identical(other.periodMax, periodMax) ||
                const DeepCollectionEquality()
                    .equals(other.periodMax, periodMax)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weekDays) ^
      const DeepCollectionEquality().hash(periodMax);

  @JsonKey(ignore: true)
  @override
  _$_ImportingClassesInfoCopyWith<__ImportingClassesInfo> get copyWith =>
      __$_ImportingClassesInfoCopyWithImpl<__ImportingClassesInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ImportingClassesInfoToJson(this);
  }
}

abstract class __ImportingClassesInfo implements _ImportingClassesInfo {
  factory __ImportingClassesInfo(List<String> weekDays, int periodMax) =
      _$__ImportingClassesInfo;

  factory __ImportingClassesInfo.fromJson(Map<String, dynamic> json) =
      _$__ImportingClassesInfo.fromJson;

  @override
  List<String> get weekDays => throw _privateConstructorUsedError;
  @override
  int get periodMax => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$_ImportingClassesInfoCopyWith<__ImportingClassesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

_ImportingClass _$_ImportingClassFromJson(Map<String, dynamic> json) {
  return __ImportingClass.fromJson(json);
}

/// @nodoc
class _$_ImportingClassTearOff {
  const _$_ImportingClassTearOff();

  __ImportingClass call(String weekDay, int period, String title, String room) {
    return __ImportingClass(
      weekDay,
      period,
      title,
      room,
    );
  }

  _ImportingClass fromJson(Map<String, Object> json) {
    return _ImportingClass.fromJson(json);
  }
}

/// @nodoc
const _$ImportingClass = _$_ImportingClassTearOff();

/// @nodoc
mixin _$_ImportingClass {
  String get weekDay => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ImportingClassCopyWith<_ImportingClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ImportingClassCopyWith<$Res> {
  factory _$ImportingClassCopyWith(
          _ImportingClass value, $Res Function(_ImportingClass) then) =
      __$ImportingClassCopyWithImpl<$Res>;
  $Res call({String weekDay, int period, String title, String room});
}

/// @nodoc
class __$ImportingClassCopyWithImpl<$Res>
    implements _$ImportingClassCopyWith<$Res> {
  __$ImportingClassCopyWithImpl(this._value, this._then);

  final _ImportingClass _value;
  // ignore: unused_field
  final $Res Function(_ImportingClass) _then;

  @override
  $Res call({
    Object? weekDay = freezed,
    Object? period = freezed,
    Object? title = freezed,
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
      weekDay: weekDay == freezed
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as String,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      room: room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$_ImportingClassCopyWith<$Res>
    implements _$ImportingClassCopyWith<$Res> {
  factory _$_ImportingClassCopyWith(
          __ImportingClass value, $Res Function(__ImportingClass) then) =
      __$_ImportingClassCopyWithImpl<$Res>;
  @override
  $Res call({String weekDay, int period, String title, String room});
}

/// @nodoc
class __$_ImportingClassCopyWithImpl<$Res>
    extends __$ImportingClassCopyWithImpl<$Res>
    implements _$_ImportingClassCopyWith<$Res> {
  __$_ImportingClassCopyWithImpl(
      __ImportingClass _value, $Res Function(__ImportingClass) _then)
      : super(_value, (v) => _then(v as __ImportingClass));

  @override
  __ImportingClass get _value => super._value as __ImportingClass;

  @override
  $Res call({
    Object? weekDay = freezed,
    Object? period = freezed,
    Object? title = freezed,
    Object? room = freezed,
  }) {
    return _then(__ImportingClass(
      weekDay == freezed
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as String,
      period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      room == freezed
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$__ImportingClass implements __ImportingClass {
  _$__ImportingClass(this.weekDay, this.period, this.title, this.room);

  factory _$__ImportingClass.fromJson(Map<String, dynamic> json) =>
      _$$__ImportingClassFromJson(json);

  @override
  final String weekDay;
  @override
  final int period;
  @override
  final String title;
  @override
  final String room;

  @override
  String toString() {
    return '_ImportingClass(weekDay: $weekDay, period: $period, title: $title, room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is __ImportingClass &&
            (identical(other.weekDay, weekDay) ||
                const DeepCollectionEquality()
                    .equals(other.weekDay, weekDay)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weekDay) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(room);

  @JsonKey(ignore: true)
  @override
  _$_ImportingClassCopyWith<__ImportingClass> get copyWith =>
      __$_ImportingClassCopyWithImpl<__ImportingClass>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$__ImportingClassToJson(this);
  }
}

abstract class __ImportingClass implements _ImportingClass {
  factory __ImportingClass(
          String weekDay, int period, String title, String room) =
      _$__ImportingClass;

  factory __ImportingClass.fromJson(Map<String, dynamic> json) =
      _$__ImportingClass.fromJson;

  @override
  String get weekDay => throw _privateConstructorUsedError;
  @override
  int get period => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get room => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$_ImportingClassCopyWith<__ImportingClass> get copyWith =>
      throw _privateConstructorUsedError;
}
