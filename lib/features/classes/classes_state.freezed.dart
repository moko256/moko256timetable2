// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClassKeyTearOff {
  const _$ClassKeyTearOff();

  _ClassKey call(WeekDay weekDay, int period) {
    return _ClassKey(
      weekDay,
      period,
    );
  }
}

/// @nodoc
const $ClassKey = _$ClassKeyTearOff();

/// @nodoc
mixin _$ClassKey {
  WeekDay get weekDay => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassKeyCopyWith<ClassKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassKeyCopyWith<$Res> {
  factory $ClassKeyCopyWith(ClassKey value, $Res Function(ClassKey) then) =
      _$ClassKeyCopyWithImpl<$Res>;
  $Res call({WeekDay weekDay, int period});
}

/// @nodoc
class _$ClassKeyCopyWithImpl<$Res> implements $ClassKeyCopyWith<$Res> {
  _$ClassKeyCopyWithImpl(this._value, this._then);

  final ClassKey _value;
  // ignore: unused_field
  final $Res Function(ClassKey) _then;

  @override
  $Res call({
    Object? weekDay = freezed,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      weekDay: weekDay == freezed
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as WeekDay,
      period: period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ClassKeyCopyWith<$Res> implements $ClassKeyCopyWith<$Res> {
  factory _$ClassKeyCopyWith(_ClassKey value, $Res Function(_ClassKey) then) =
      __$ClassKeyCopyWithImpl<$Res>;
  @override
  $Res call({WeekDay weekDay, int period});
}

/// @nodoc
class __$ClassKeyCopyWithImpl<$Res> extends _$ClassKeyCopyWithImpl<$Res>
    implements _$ClassKeyCopyWith<$Res> {
  __$ClassKeyCopyWithImpl(_ClassKey _value, $Res Function(_ClassKey) _then)
      : super(_value, (v) => _then(v as _ClassKey));

  @override
  _ClassKey get _value => super._value as _ClassKey;

  @override
  $Res call({
    Object? weekDay = freezed,
    Object? period = freezed,
  }) {
    return _then(_ClassKey(
      weekDay == freezed
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as WeekDay,
      period == freezed
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ClassKey implements _ClassKey {
  _$_ClassKey(this.weekDay, this.period);

  @override
  final WeekDay weekDay;
  @override
  final int period;

  @override
  String toString() {
    return 'ClassKey(weekDay: $weekDay, period: $period)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClassKey &&
            (identical(other.weekDay, weekDay) ||
                const DeepCollectionEquality()
                    .equals(other.weekDay, weekDay)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weekDay) ^
      const DeepCollectionEquality().hash(period);

  @JsonKey(ignore: true)
  @override
  _$ClassKeyCopyWith<_ClassKey> get copyWith =>
      __$ClassKeyCopyWithImpl<_ClassKey>(this, _$identity);
}

abstract class _ClassKey implements ClassKey {
  factory _ClassKey(WeekDay weekDay, int period) = _$_ClassKey;

  @override
  WeekDay get weekDay => throw _privateConstructorUsedError;
  @override
  int get period => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClassKeyCopyWith<_ClassKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClassDetailsTearOff {
  const _$ClassDetailsTearOff();

  _ClassDetails call(String title, String room) {
    return _ClassDetails(
      title,
      room,
    );
  }
}

/// @nodoc
const $ClassDetails = _$ClassDetailsTearOff();

/// @nodoc
mixin _$ClassDetails {
  String get title => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassDetailsCopyWith<ClassDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassDetailsCopyWith<$Res> {
  factory $ClassDetailsCopyWith(
          ClassDetails value, $Res Function(ClassDetails) then) =
      _$ClassDetailsCopyWithImpl<$Res>;
  $Res call({String title, String room});
}

/// @nodoc
class _$ClassDetailsCopyWithImpl<$Res> implements $ClassDetailsCopyWith<$Res> {
  _$ClassDetailsCopyWithImpl(this._value, this._then);

  final ClassDetails _value;
  // ignore: unused_field
  final $Res Function(ClassDetails) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$ClassDetailsCopyWith<$Res>
    implements $ClassDetailsCopyWith<$Res> {
  factory _$ClassDetailsCopyWith(
          _ClassDetails value, $Res Function(_ClassDetails) then) =
      __$ClassDetailsCopyWithImpl<$Res>;
  @override
  $Res call({String title, String room});
}

/// @nodoc
class __$ClassDetailsCopyWithImpl<$Res> extends _$ClassDetailsCopyWithImpl<$Res>
    implements _$ClassDetailsCopyWith<$Res> {
  __$ClassDetailsCopyWithImpl(
      _ClassDetails _value, $Res Function(_ClassDetails) _then)
      : super(_value, (v) => _then(v as _ClassDetails));

  @override
  _ClassDetails get _value => super._value as _ClassDetails;

  @override
  $Res call({
    Object? title = freezed,
    Object? room = freezed,
  }) {
    return _then(_ClassDetails(
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

class _$_ClassDetails implements _ClassDetails {
  _$_ClassDetails(this.title, this.room);

  @override
  final String title;
  @override
  final String room;

  @override
  String toString() {
    return 'ClassDetails(title: $title, room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClassDetails &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(room);

  @JsonKey(ignore: true)
  @override
  _$ClassDetailsCopyWith<_ClassDetails> get copyWith =>
      __$ClassDetailsCopyWithImpl<_ClassDetails>(this, _$identity);
}

abstract class _ClassDetails implements ClassDetails {
  factory _ClassDetails(String title, String room) = _$_ClassDetails;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get room => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClassDetailsCopyWith<_ClassDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClassesInfoTearOff {
  const _$ClassesInfoTearOff();

  _ClassesInfo call(List<WeekDay> weekDays, int periodMax) {
    return _ClassesInfo(
      weekDays,
      periodMax,
    );
  }
}

/// @nodoc
const $ClassesInfo = _$ClassesInfoTearOff();

/// @nodoc
mixin _$ClassesInfo {
  List<WeekDay> get weekDays => throw _privateConstructorUsedError;
  int get periodMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassesInfoCopyWith<ClassesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassesInfoCopyWith<$Res> {
  factory $ClassesInfoCopyWith(
          ClassesInfo value, $Res Function(ClassesInfo) then) =
      _$ClassesInfoCopyWithImpl<$Res>;
  $Res call({List<WeekDay> weekDays, int periodMax});
}

/// @nodoc
class _$ClassesInfoCopyWithImpl<$Res> implements $ClassesInfoCopyWith<$Res> {
  _$ClassesInfoCopyWithImpl(this._value, this._then);

  final ClassesInfo _value;
  // ignore: unused_field
  final $Res Function(ClassesInfo) _then;

  @override
  $Res call({
    Object? weekDays = freezed,
    Object? periodMax = freezed,
  }) {
    return _then(_value.copyWith(
      weekDays: weekDays == freezed
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<WeekDay>,
      periodMax: periodMax == freezed
          ? _value.periodMax
          : periodMax // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ClassesInfoCopyWith<$Res>
    implements $ClassesInfoCopyWith<$Res> {
  factory _$ClassesInfoCopyWith(
          _ClassesInfo value, $Res Function(_ClassesInfo) then) =
      __$ClassesInfoCopyWithImpl<$Res>;
  @override
  $Res call({List<WeekDay> weekDays, int periodMax});
}

/// @nodoc
class __$ClassesInfoCopyWithImpl<$Res> extends _$ClassesInfoCopyWithImpl<$Res>
    implements _$ClassesInfoCopyWith<$Res> {
  __$ClassesInfoCopyWithImpl(
      _ClassesInfo _value, $Res Function(_ClassesInfo) _then)
      : super(_value, (v) => _then(v as _ClassesInfo));

  @override
  _ClassesInfo get _value => super._value as _ClassesInfo;

  @override
  $Res call({
    Object? weekDays = freezed,
    Object? periodMax = freezed,
  }) {
    return _then(_ClassesInfo(
      weekDays == freezed
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<WeekDay>,
      periodMax == freezed
          ? _value.periodMax
          : periodMax // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ClassesInfo implements _ClassesInfo {
  _$_ClassesInfo(this.weekDays, this.periodMax);

  @override
  final List<WeekDay> weekDays;
  @override
  final int periodMax;

  @override
  String toString() {
    return 'ClassesInfo(weekDays: $weekDays, periodMax: $periodMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ClassesInfo &&
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
  _$ClassesInfoCopyWith<_ClassesInfo> get copyWith =>
      __$ClassesInfoCopyWithImpl<_ClassesInfo>(this, _$identity);
}

abstract class _ClassesInfo implements ClassesInfo {
  factory _ClassesInfo(List<WeekDay> weekDays, int periodMax) = _$_ClassesInfo;

  @override
  List<WeekDay> get weekDays => throw _privateConstructorUsedError;
  @override
  int get periodMax => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClassesInfoCopyWith<_ClassesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ClassesTearOff {
  const _$ClassesTearOff();

  _Classes call(ClassesInfo classesInfo, Map<ClassKey, ClassDetails> classes) {
    return _Classes(
      classesInfo,
      classes,
    );
  }
}

/// @nodoc
const $Classes = _$ClassesTearOff();

/// @nodoc
mixin _$Classes {
  ClassesInfo get classesInfo => throw _privateConstructorUsedError;
  Map<ClassKey, ClassDetails> get classes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassesCopyWith<Classes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassesCopyWith<$Res> {
  factory $ClassesCopyWith(Classes value, $Res Function(Classes) then) =
      _$ClassesCopyWithImpl<$Res>;
  $Res call({ClassesInfo classesInfo, Map<ClassKey, ClassDetails> classes});

  $ClassesInfoCopyWith<$Res> get classesInfo;
}

/// @nodoc
class _$ClassesCopyWithImpl<$Res> implements $ClassesCopyWith<$Res> {
  _$ClassesCopyWithImpl(this._value, this._then);

  final Classes _value;
  // ignore: unused_field
  final $Res Function(Classes) _then;

  @override
  $Res call({
    Object? classesInfo = freezed,
    Object? classes = freezed,
  }) {
    return _then(_value.copyWith(
      classesInfo: classesInfo == freezed
          ? _value.classesInfo
          : classesInfo // ignore: cast_nullable_to_non_nullable
              as ClassesInfo,
      classes: classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as Map<ClassKey, ClassDetails>,
    ));
  }

  @override
  $ClassesInfoCopyWith<$Res> get classesInfo {
    return $ClassesInfoCopyWith<$Res>(_value.classesInfo, (value) {
      return _then(_value.copyWith(classesInfo: value));
    });
  }
}

/// @nodoc
abstract class _$ClassesCopyWith<$Res> implements $ClassesCopyWith<$Res> {
  factory _$ClassesCopyWith(_Classes value, $Res Function(_Classes) then) =
      __$ClassesCopyWithImpl<$Res>;
  @override
  $Res call({ClassesInfo classesInfo, Map<ClassKey, ClassDetails> classes});

  @override
  $ClassesInfoCopyWith<$Res> get classesInfo;
}

/// @nodoc
class __$ClassesCopyWithImpl<$Res> extends _$ClassesCopyWithImpl<$Res>
    implements _$ClassesCopyWith<$Res> {
  __$ClassesCopyWithImpl(_Classes _value, $Res Function(_Classes) _then)
      : super(_value, (v) => _then(v as _Classes));

  @override
  _Classes get _value => super._value as _Classes;

  @override
  $Res call({
    Object? classesInfo = freezed,
    Object? classes = freezed,
  }) {
    return _then(_Classes(
      classesInfo == freezed
          ? _value.classesInfo
          : classesInfo // ignore: cast_nullable_to_non_nullable
              as ClassesInfo,
      classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as Map<ClassKey, ClassDetails>,
    ));
  }
}

/// @nodoc

class _$_Classes implements _Classes {
  _$_Classes(this.classesInfo, this.classes);

  @override
  final ClassesInfo classesInfo;
  @override
  final Map<ClassKey, ClassDetails> classes;

  @override
  String toString() {
    return 'Classes(classesInfo: $classesInfo, classes: $classes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Classes &&
            (identical(other.classesInfo, classesInfo) ||
                const DeepCollectionEquality()
                    .equals(other.classesInfo, classesInfo)) &&
            (identical(other.classes, classes) ||
                const DeepCollectionEquality().equals(other.classes, classes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(classesInfo) ^
      const DeepCollectionEquality().hash(classes);

  @JsonKey(ignore: true)
  @override
  _$ClassesCopyWith<_Classes> get copyWith =>
      __$ClassesCopyWithImpl<_Classes>(this, _$identity);
}

abstract class _Classes implements Classes {
  factory _Classes(
          ClassesInfo classesInfo, Map<ClassKey, ClassDetails> classes) =
      _$_Classes;

  @override
  ClassesInfo get classesInfo => throw _privateConstructorUsedError;
  @override
  Map<ClassKey, ClassDetails> get classes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ClassesCopyWith<_Classes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StateClassesTearOff {
  const _$StateClassesTearOff();

  Loading loading() {
    return const Loading();
  }

  Loaded loaded(Classes classes) {
    return Loaded(
      classes,
    );
  }
}

/// @nodoc
const $StateClasses = _$StateClassesTearOff();

/// @nodoc
mixin _$StateClasses {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Classes classes) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Classes classes)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Classes classes)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateClassesCopyWith<$Res> {
  factory $StateClassesCopyWith(
          StateClasses value, $Res Function(StateClasses) then) =
      _$StateClassesCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateClassesCopyWithImpl<$Res> implements $StateClassesCopyWith<$Res> {
  _$StateClassesCopyWithImpl(this._value, this._then);

  final StateClasses _value;
  // ignore: unused_field
  final $Res Function(StateClasses) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$StateClassesCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'StateClasses.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Classes classes) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Classes classes)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Classes classes)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements StateClasses {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({Classes classes});

  $ClassesCopyWith<$Res> get classes;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$StateClassesCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? classes = freezed,
  }) {
    return _then(Loaded(
      classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as Classes,
    ));
  }

  @override
  $ClassesCopyWith<$Res> get classes {
    return $ClassesCopyWith<$Res>(_value.classes, (value) {
      return _then(_value.copyWith(classes: value));
    });
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.classes);

  @override
  final Classes classes;

  @override
  String toString() {
    return 'StateClasses.loaded(classes: $classes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.classes, classes) ||
                const DeepCollectionEquality().equals(other.classes, classes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(classes);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Classes classes) loaded,
  }) {
    return loaded(classes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Classes classes)? loaded,
  }) {
    return loaded?.call(classes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Classes classes)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(classes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements StateClasses {
  const factory Loaded(Classes classes) = _$Loaded;

  Classes get classes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}
