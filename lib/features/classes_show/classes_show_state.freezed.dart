// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classes_show_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ColorizedClassDetailsTearOff {
  const _$ColorizedClassDetailsTearOff();

  _ColorizedClassDetails call(ClassDetails details, double color) {
    return _ColorizedClassDetails(
      details,
      color,
    );
  }
}

/// @nodoc
const $ColorizedClassDetails = _$ColorizedClassDetailsTearOff();

/// @nodoc
mixin _$ColorizedClassDetails {
  ClassDetails get details => throw _privateConstructorUsedError;
  double get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ColorizedClassDetailsCopyWith<ColorizedClassDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorizedClassDetailsCopyWith<$Res> {
  factory $ColorizedClassDetailsCopyWith(ColorizedClassDetails value,
          $Res Function(ColorizedClassDetails) then) =
      _$ColorizedClassDetailsCopyWithImpl<$Res>;
  $Res call({ClassDetails details, double color});

  $ClassDetailsCopyWith<$Res> get details;
}

/// @nodoc
class _$ColorizedClassDetailsCopyWithImpl<$Res>
    implements $ColorizedClassDetailsCopyWith<$Res> {
  _$ColorizedClassDetailsCopyWithImpl(this._value, this._then);

  final ColorizedClassDetails _value;
  // ignore: unused_field
  final $Res Function(ColorizedClassDetails) _then;

  @override
  $Res call({
    Object? details = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ClassDetails,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $ClassDetailsCopyWith<$Res> get details {
    return $ClassDetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value));
    });
  }
}

/// @nodoc
abstract class _$ColorizedClassDetailsCopyWith<$Res>
    implements $ColorizedClassDetailsCopyWith<$Res> {
  factory _$ColorizedClassDetailsCopyWith(_ColorizedClassDetails value,
          $Res Function(_ColorizedClassDetails) then) =
      __$ColorizedClassDetailsCopyWithImpl<$Res>;
  @override
  $Res call({ClassDetails details, double color});

  @override
  $ClassDetailsCopyWith<$Res> get details;
}

/// @nodoc
class __$ColorizedClassDetailsCopyWithImpl<$Res>
    extends _$ColorizedClassDetailsCopyWithImpl<$Res>
    implements _$ColorizedClassDetailsCopyWith<$Res> {
  __$ColorizedClassDetailsCopyWithImpl(_ColorizedClassDetails _value,
      $Res Function(_ColorizedClassDetails) _then)
      : super(_value, (v) => _then(v as _ColorizedClassDetails));

  @override
  _ColorizedClassDetails get _value => super._value as _ColorizedClassDetails;

  @override
  $Res call({
    Object? details = freezed,
    Object? color = freezed,
  }) {
    return _then(_ColorizedClassDetails(
      details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as ClassDetails,
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ColorizedClassDetails implements _ColorizedClassDetails {
  _$_ColorizedClassDetails(this.details, this.color);

  @override
  final ClassDetails details;
  @override
  final double color;

  @override
  String toString() {
    return 'ColorizedClassDetails(details: $details, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorizedClassDetails &&
            (identical(other.details, details) ||
                const DeepCollectionEquality()
                    .equals(other.details, details)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(details) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$ColorizedClassDetailsCopyWith<_ColorizedClassDetails> get copyWith =>
      __$ColorizedClassDetailsCopyWithImpl<_ColorizedClassDetails>(
          this, _$identity);
}

abstract class _ColorizedClassDetails implements ColorizedClassDetails {
  factory _ColorizedClassDetails(ClassDetails details, double color) =
      _$_ColorizedClassDetails;

  @override
  ClassDetails get details => throw _privateConstructorUsedError;
  @override
  double get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ColorizedClassDetailsCopyWith<_ColorizedClassDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StateShowTearOff {
  const _$StateShowTearOff();

  Loading loading() {
    return Loading();
  }

  Loaded loaded(
      ClassesInfo classesInfo, Map<ClassKey, ColorizedClassDetails> classes) {
    return Loaded(
      classesInfo,
      classes,
    );
  }
}

/// @nodoc
const $StateShow = _$StateShowTearOff();

/// @nodoc
mixin _$StateShow {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ClassesInfo classesInfo,
            Map<ClassKey, ColorizedClassDetails> classes)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ClassesInfo classesInfo,
            Map<ClassKey, ColorizedClassDetails> classes)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ClassesInfo classesInfo,
            Map<ClassKey, ColorizedClassDetails> classes)?
        loaded,
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
abstract class $StateShowCopyWith<$Res> {
  factory $StateShowCopyWith(StateShow value, $Res Function(StateShow) then) =
      _$StateShowCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateShowCopyWithImpl<$Res> implements $StateShowCopyWith<$Res> {
  _$StateShowCopyWithImpl(this._value, this._then);

  final StateShow _value;
  // ignore: unused_field
  final $Res Function(StateShow) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$StateShowCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  _$Loading();

  @override
  String toString() {
    return 'StateShow.loading()';
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
    required TResult Function(ClassesInfo classesInfo,
            Map<ClassKey, ColorizedClassDetails> classes)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ClassesInfo classesInfo,
            Map<ClassKey, ColorizedClassDetails> classes)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ClassesInfo classesInfo,
            Map<ClassKey, ColorizedClassDetails> classes)?
        loaded,
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

abstract class Loading implements StateShow {
  factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call(
      {ClassesInfo classesInfo, Map<ClassKey, ColorizedClassDetails> classes});

  $ClassesInfoCopyWith<$Res> get classesInfo;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$StateShowCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? classesInfo = freezed,
    Object? classes = freezed,
  }) {
    return _then(Loaded(
      classesInfo == freezed
          ? _value.classesInfo
          : classesInfo // ignore: cast_nullable_to_non_nullable
              as ClassesInfo,
      classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as Map<ClassKey, ColorizedClassDetails>,
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

class _$Loaded implements Loaded {
  _$Loaded(this.classesInfo, this.classes);

  @override
  final ClassesInfo classesInfo;
  @override
  final Map<ClassKey, ColorizedClassDetails> classes;

  @override
  String toString() {
    return 'StateShow.loaded(classesInfo: $classesInfo, classes: $classes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
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
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(ClassesInfo classesInfo,
            Map<ClassKey, ColorizedClassDetails> classes)
        loaded,
  }) {
    return loaded(classesInfo, classes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ClassesInfo classesInfo,
            Map<ClassKey, ColorizedClassDetails> classes)?
        loaded,
  }) {
    return loaded?.call(classesInfo, classes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(ClassesInfo classesInfo,
            Map<ClassKey, ColorizedClassDetails> classes)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(classesInfo, classes);
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

abstract class Loaded implements StateShow {
  factory Loaded(ClassesInfo classesInfo,
      Map<ClassKey, ColorizedClassDetails> classes) = _$Loaded;

  ClassesInfo get classesInfo => throw _privateConstructorUsedError;
  Map<ClassKey, ColorizedClassDetails> get classes =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}
