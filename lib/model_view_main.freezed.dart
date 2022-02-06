// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model_view_main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurrentClassesVmStateTearOff {
  const _$CurrentClassesVmStateTearOff();

  _CurrentClasses call(
      ModelVoClasses classes,
      Map<ModelVoClassInfo, double> cellColors,
      ModelVoTermKey termKey,
      ModelVoTermInfo termInfo) {
    return _CurrentClasses(
      classes,
      cellColors,
      termKey,
      termInfo,
    );
  }

  _ClassesIsNotExist notExist() {
    return const _ClassesIsNotExist();
  }

  _ClassesIsLoading loading() {
    return const _ClassesIsLoading();
  }
}

/// @nodoc
const $CurrentClassesVmState = _$CurrentClassesVmStateTearOff();

/// @nodoc
mixin _$CurrentClassesVmState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)
        $default, {
    required TResult Function() notExist,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)?
        $default, {
    TResult Function()? notExist,
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)?
        $default, {
    TResult Function()? notExist,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CurrentClasses value) $default, {
    required TResult Function(_ClassesIsNotExist value) notExist,
    required TResult Function(_ClassesIsLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CurrentClasses value)? $default, {
    TResult Function(_ClassesIsNotExist value)? notExist,
    TResult Function(_ClassesIsLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CurrentClasses value)? $default, {
    TResult Function(_ClassesIsNotExist value)? notExist,
    TResult Function(_ClassesIsLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentClassesVmStateCopyWith<$Res> {
  factory $CurrentClassesVmStateCopyWith(CurrentClassesVmState value,
          $Res Function(CurrentClassesVmState) then) =
      _$CurrentClassesVmStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CurrentClassesVmStateCopyWithImpl<$Res>
    implements $CurrentClassesVmStateCopyWith<$Res> {
  _$CurrentClassesVmStateCopyWithImpl(this._value, this._then);

  final CurrentClassesVmState _value;
  // ignore: unused_field
  final $Res Function(CurrentClassesVmState) _then;
}

/// @nodoc
abstract class _$CurrentClassesCopyWith<$Res> {
  factory _$CurrentClassesCopyWith(
          _CurrentClasses value, $Res Function(_CurrentClasses) then) =
      __$CurrentClassesCopyWithImpl<$Res>;
  $Res call(
      {ModelVoClasses classes,
      Map<ModelVoClassInfo, double> cellColors,
      ModelVoTermKey termKey,
      ModelVoTermInfo termInfo});

  $ModelVoClassesCopyWith<$Res> get classes;
  $ModelVoTermKeyCopyWith<$Res> get termKey;
  $ModelVoTermInfoCopyWith<$Res> get termInfo;
}

/// @nodoc
class __$CurrentClassesCopyWithImpl<$Res>
    extends _$CurrentClassesVmStateCopyWithImpl<$Res>
    implements _$CurrentClassesCopyWith<$Res> {
  __$CurrentClassesCopyWithImpl(
      _CurrentClasses _value, $Res Function(_CurrentClasses) _then)
      : super(_value, (v) => _then(v as _CurrentClasses));

  @override
  _CurrentClasses get _value => super._value as _CurrentClasses;

  @override
  $Res call({
    Object? classes = freezed,
    Object? cellColors = freezed,
    Object? termKey = freezed,
    Object? termInfo = freezed,
  }) {
    return _then(_CurrentClasses(
      classes == freezed
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as ModelVoClasses,
      cellColors == freezed
          ? _value.cellColors
          : cellColors // ignore: cast_nullable_to_non_nullable
              as Map<ModelVoClassInfo, double>,
      termKey == freezed
          ? _value.termKey
          : termKey // ignore: cast_nullable_to_non_nullable
              as ModelVoTermKey,
      termInfo == freezed
          ? _value.termInfo
          : termInfo // ignore: cast_nullable_to_non_nullable
              as ModelVoTermInfo,
    ));
  }

  @override
  $ModelVoClassesCopyWith<$Res> get classes {
    return $ModelVoClassesCopyWith<$Res>(_value.classes, (value) {
      return _then(_value.copyWith(classes: value));
    });
  }

  @override
  $ModelVoTermKeyCopyWith<$Res> get termKey {
    return $ModelVoTermKeyCopyWith<$Res>(_value.termKey, (value) {
      return _then(_value.copyWith(termKey: value));
    });
  }

  @override
  $ModelVoTermInfoCopyWith<$Res> get termInfo {
    return $ModelVoTermInfoCopyWith<$Res>(_value.termInfo, (value) {
      return _then(_value.copyWith(termInfo: value));
    });
  }
}

/// @nodoc

class _$_CurrentClasses
    with DiagnosticableTreeMixin
    implements _CurrentClasses {
  const _$_CurrentClasses(
      this.classes, this.cellColors, this.termKey, this.termInfo);

  @override
  final ModelVoClasses classes;
  @override
  final Map<ModelVoClassInfo, double> cellColors;
  @override
  final ModelVoTermKey termKey;
  @override
  final ModelVoTermInfo termInfo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentClassesVmState(classes: $classes, cellColors: $cellColors, termKey: $termKey, termInfo: $termInfo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentClassesVmState'))
      ..add(DiagnosticsProperty('classes', classes))
      ..add(DiagnosticsProperty('cellColors', cellColors))
      ..add(DiagnosticsProperty('termKey', termKey))
      ..add(DiagnosticsProperty('termInfo', termInfo));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentClasses &&
            (identical(other.classes, classes) ||
                const DeepCollectionEquality()
                    .equals(other.classes, classes)) &&
            (identical(other.cellColors, cellColors) ||
                const DeepCollectionEquality()
                    .equals(other.cellColors, cellColors)) &&
            (identical(other.termKey, termKey) ||
                const DeepCollectionEquality()
                    .equals(other.termKey, termKey)) &&
            (identical(other.termInfo, termInfo) ||
                const DeepCollectionEquality()
                    .equals(other.termInfo, termInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(classes) ^
      const DeepCollectionEquality().hash(cellColors) ^
      const DeepCollectionEquality().hash(termKey) ^
      const DeepCollectionEquality().hash(termInfo);

  @JsonKey(ignore: true)
  @override
  _$CurrentClassesCopyWith<_CurrentClasses> get copyWith =>
      __$CurrentClassesCopyWithImpl<_CurrentClasses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)
        $default, {
    required TResult Function() notExist,
    required TResult Function() loading,
  }) {
    return $default(classes, cellColors, termKey, termInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)?
        $default, {
    TResult Function()? notExist,
    TResult Function()? loading,
  }) {
    return $default?.call(classes, cellColors, termKey, termInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)?
        $default, {
    TResult Function()? notExist,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(classes, cellColors, termKey, termInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CurrentClasses value) $default, {
    required TResult Function(_ClassesIsNotExist value) notExist,
    required TResult Function(_ClassesIsLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CurrentClasses value)? $default, {
    TResult Function(_ClassesIsNotExist value)? notExist,
    TResult Function(_ClassesIsLoading value)? loading,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CurrentClasses value)? $default, {
    TResult Function(_ClassesIsNotExist value)? notExist,
    TResult Function(_ClassesIsLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CurrentClasses implements CurrentClassesVmState {
  const factory _CurrentClasses(
      ModelVoClasses classes,
      Map<ModelVoClassInfo, double> cellColors,
      ModelVoTermKey termKey,
      ModelVoTermInfo termInfo) = _$_CurrentClasses;

  ModelVoClasses get classes => throw _privateConstructorUsedError;
  Map<ModelVoClassInfo, double> get cellColors =>
      throw _privateConstructorUsedError;
  ModelVoTermKey get termKey => throw _privateConstructorUsedError;
  ModelVoTermInfo get termInfo => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CurrentClassesCopyWith<_CurrentClasses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ClassesIsNotExistCopyWith<$Res> {
  factory _$ClassesIsNotExistCopyWith(
          _ClassesIsNotExist value, $Res Function(_ClassesIsNotExist) then) =
      __$ClassesIsNotExistCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClassesIsNotExistCopyWithImpl<$Res>
    extends _$CurrentClassesVmStateCopyWithImpl<$Res>
    implements _$ClassesIsNotExistCopyWith<$Res> {
  __$ClassesIsNotExistCopyWithImpl(
      _ClassesIsNotExist _value, $Res Function(_ClassesIsNotExist) _then)
      : super(_value, (v) => _then(v as _ClassesIsNotExist));

  @override
  _ClassesIsNotExist get _value => super._value as _ClassesIsNotExist;
}

/// @nodoc

class _$_ClassesIsNotExist
    with DiagnosticableTreeMixin
    implements _ClassesIsNotExist {
  const _$_ClassesIsNotExist();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentClassesVmState.notExist()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentClassesVmState.notExist'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClassesIsNotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)
        $default, {
    required TResult Function() notExist,
    required TResult Function() loading,
  }) {
    return notExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)?
        $default, {
    TResult Function()? notExist,
    TResult Function()? loading,
  }) {
    return notExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)?
        $default, {
    TResult Function()? notExist,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (notExist != null) {
      return notExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CurrentClasses value) $default, {
    required TResult Function(_ClassesIsNotExist value) notExist,
    required TResult Function(_ClassesIsLoading value) loading,
  }) {
    return notExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CurrentClasses value)? $default, {
    TResult Function(_ClassesIsNotExist value)? notExist,
    TResult Function(_ClassesIsLoading value)? loading,
  }) {
    return notExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CurrentClasses value)? $default, {
    TResult Function(_ClassesIsNotExist value)? notExist,
    TResult Function(_ClassesIsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (notExist != null) {
      return notExist(this);
    }
    return orElse();
  }
}

abstract class _ClassesIsNotExist implements CurrentClassesVmState {
  const factory _ClassesIsNotExist() = _$_ClassesIsNotExist;
}

/// @nodoc
abstract class _$ClassesIsLoadingCopyWith<$Res> {
  factory _$ClassesIsLoadingCopyWith(
          _ClassesIsLoading value, $Res Function(_ClassesIsLoading) then) =
      __$ClassesIsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ClassesIsLoadingCopyWithImpl<$Res>
    extends _$CurrentClassesVmStateCopyWithImpl<$Res>
    implements _$ClassesIsLoadingCopyWith<$Res> {
  __$ClassesIsLoadingCopyWithImpl(
      _ClassesIsLoading _value, $Res Function(_ClassesIsLoading) _then)
      : super(_value, (v) => _then(v as _ClassesIsLoading));

  @override
  _ClassesIsLoading get _value => super._value as _ClassesIsLoading;
}

/// @nodoc

class _$_ClassesIsLoading
    with DiagnosticableTreeMixin
    implements _ClassesIsLoading {
  const _$_ClassesIsLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CurrentClassesVmState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CurrentClassesVmState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ClassesIsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)
        $default, {
    required TResult Function() notExist,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)?
        $default, {
    TResult Function()? notExist,
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            ModelVoClasses classes,
            Map<ModelVoClassInfo, double> cellColors,
            ModelVoTermKey termKey,
            ModelVoTermInfo termInfo)?
        $default, {
    TResult Function()? notExist,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CurrentClasses value) $default, {
    required TResult Function(_ClassesIsNotExist value) notExist,
    required TResult Function(_ClassesIsLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_CurrentClasses value)? $default, {
    TResult Function(_ClassesIsNotExist value)? notExist,
    TResult Function(_ClassesIsLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CurrentClasses value)? $default, {
    TResult Function(_ClassesIsNotExist value)? notExist,
    TResult Function(_ClassesIsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ClassesIsLoading implements CurrentClassesVmState {
  const factory _ClassesIsLoading() = _$_ClassesIsLoading;
}

/// @nodoc
class _$TermsVmStateTearOff {
  const _$TermsVmStateTearOff();

  _Terms call(ModelVoTerms terms) {
    return _Terms(
      terms,
    );
  }

  _TermsIsLoading loading() {
    return const _TermsIsLoading();
  }
}

/// @nodoc
const $TermsVmState = _$TermsVmStateTearOff();

/// @nodoc
mixin _$TermsVmState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ModelVoTerms terms) $default, {
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ModelVoTerms terms)? $default, {
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ModelVoTerms terms)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Terms value) $default, {
    required TResult Function(_TermsIsLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Terms value)? $default, {
    TResult Function(_TermsIsLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Terms value)? $default, {
    TResult Function(_TermsIsLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsVmStateCopyWith<$Res> {
  factory $TermsVmStateCopyWith(
          TermsVmState value, $Res Function(TermsVmState) then) =
      _$TermsVmStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TermsVmStateCopyWithImpl<$Res> implements $TermsVmStateCopyWith<$Res> {
  _$TermsVmStateCopyWithImpl(this._value, this._then);

  final TermsVmState _value;
  // ignore: unused_field
  final $Res Function(TermsVmState) _then;
}

/// @nodoc
abstract class _$TermsCopyWith<$Res> {
  factory _$TermsCopyWith(_Terms value, $Res Function(_Terms) then) =
      __$TermsCopyWithImpl<$Res>;
  $Res call({ModelVoTerms terms});

  $ModelVoTermsCopyWith<$Res> get terms;
}

/// @nodoc
class __$TermsCopyWithImpl<$Res> extends _$TermsVmStateCopyWithImpl<$Res>
    implements _$TermsCopyWith<$Res> {
  __$TermsCopyWithImpl(_Terms _value, $Res Function(_Terms) _then)
      : super(_value, (v) => _then(v as _Terms));

  @override
  _Terms get _value => super._value as _Terms;

  @override
  $Res call({
    Object? terms = freezed,
  }) {
    return _then(_Terms(
      terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as ModelVoTerms,
    ));
  }

  @override
  $ModelVoTermsCopyWith<$Res> get terms {
    return $ModelVoTermsCopyWith<$Res>(_value.terms, (value) {
      return _then(_value.copyWith(terms: value));
    });
  }
}

/// @nodoc

class _$_Terms with DiagnosticableTreeMixin implements _Terms {
  const _$_Terms(this.terms);

  @override
  final ModelVoTerms terms;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TermsVmState(terms: $terms)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TermsVmState'))
      ..add(DiagnosticsProperty('terms', terms));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Terms &&
            (identical(other.terms, terms) ||
                const DeepCollectionEquality().equals(other.terms, terms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(terms);

  @JsonKey(ignore: true)
  @override
  _$TermsCopyWith<_Terms> get copyWith =>
      __$TermsCopyWithImpl<_Terms>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ModelVoTerms terms) $default, {
    required TResult Function() loading,
  }) {
    return $default(terms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ModelVoTerms terms)? $default, {
    TResult Function()? loading,
  }) {
    return $default?.call(terms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ModelVoTerms terms)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(terms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Terms value) $default, {
    required TResult Function(_TermsIsLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Terms value)? $default, {
    TResult Function(_TermsIsLoading value)? loading,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Terms value)? $default, {
    TResult Function(_TermsIsLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Terms implements TermsVmState {
  const factory _Terms(ModelVoTerms terms) = _$_Terms;

  ModelVoTerms get terms => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TermsCopyWith<_Terms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TermsIsLoadingCopyWith<$Res> {
  factory _$TermsIsLoadingCopyWith(
          _TermsIsLoading value, $Res Function(_TermsIsLoading) then) =
      __$TermsIsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$TermsIsLoadingCopyWithImpl<$Res>
    extends _$TermsVmStateCopyWithImpl<$Res>
    implements _$TermsIsLoadingCopyWith<$Res> {
  __$TermsIsLoadingCopyWithImpl(
      _TermsIsLoading _value, $Res Function(_TermsIsLoading) _then)
      : super(_value, (v) => _then(v as _TermsIsLoading));

  @override
  _TermsIsLoading get _value => super._value as _TermsIsLoading;
}

/// @nodoc

class _$_TermsIsLoading
    with DiagnosticableTreeMixin
    implements _TermsIsLoading {
  const _$_TermsIsLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TermsVmState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TermsVmState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TermsIsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(ModelVoTerms terms) $default, {
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(ModelVoTerms terms)? $default, {
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(ModelVoTerms terms)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Terms value) $default, {
    required TResult Function(_TermsIsLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_Terms value)? $default, {
    TResult Function(_TermsIsLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Terms value)? $default, {
    TResult Function(_TermsIsLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TermsIsLoading implements TermsVmState {
  const factory _TermsIsLoading() = _$_TermsIsLoading;
}

/// @nodoc
class _$ModelViewMainStateTearOff {
  const _$ModelViewMainStateTearOff();

  _ModelViewMainState call(
      CurrentClassesVmState currentClasses, TermsVmState terms) {
    return _ModelViewMainState(
      currentClasses,
      terms,
    );
  }
}

/// @nodoc
const $ModelViewMainState = _$ModelViewMainStateTearOff();

/// @nodoc
mixin _$ModelViewMainState {
  CurrentClassesVmState get currentClasses =>
      throw _privateConstructorUsedError;
  TermsVmState get terms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelViewMainStateCopyWith<ModelViewMainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelViewMainStateCopyWith<$Res> {
  factory $ModelViewMainStateCopyWith(
          ModelViewMainState value, $Res Function(ModelViewMainState) then) =
      _$ModelViewMainStateCopyWithImpl<$Res>;
  $Res call({CurrentClassesVmState currentClasses, TermsVmState terms});

  $CurrentClassesVmStateCopyWith<$Res> get currentClasses;
  $TermsVmStateCopyWith<$Res> get terms;
}

/// @nodoc
class _$ModelViewMainStateCopyWithImpl<$Res>
    implements $ModelViewMainStateCopyWith<$Res> {
  _$ModelViewMainStateCopyWithImpl(this._value, this._then);

  final ModelViewMainState _value;
  // ignore: unused_field
  final $Res Function(ModelViewMainState) _then;

  @override
  $Res call({
    Object? currentClasses = freezed,
    Object? terms = freezed,
  }) {
    return _then(_value.copyWith(
      currentClasses: currentClasses == freezed
          ? _value.currentClasses
          : currentClasses // ignore: cast_nullable_to_non_nullable
              as CurrentClassesVmState,
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as TermsVmState,
    ));
  }

  @override
  $CurrentClassesVmStateCopyWith<$Res> get currentClasses {
    return $CurrentClassesVmStateCopyWith<$Res>(_value.currentClasses, (value) {
      return _then(_value.copyWith(currentClasses: value));
    });
  }

  @override
  $TermsVmStateCopyWith<$Res> get terms {
    return $TermsVmStateCopyWith<$Res>(_value.terms, (value) {
      return _then(_value.copyWith(terms: value));
    });
  }
}

/// @nodoc
abstract class _$ModelViewMainStateCopyWith<$Res>
    implements $ModelViewMainStateCopyWith<$Res> {
  factory _$ModelViewMainStateCopyWith(
          _ModelViewMainState value, $Res Function(_ModelViewMainState) then) =
      __$ModelViewMainStateCopyWithImpl<$Res>;
  @override
  $Res call({CurrentClassesVmState currentClasses, TermsVmState terms});

  @override
  $CurrentClassesVmStateCopyWith<$Res> get currentClasses;
  @override
  $TermsVmStateCopyWith<$Res> get terms;
}

/// @nodoc
class __$ModelViewMainStateCopyWithImpl<$Res>
    extends _$ModelViewMainStateCopyWithImpl<$Res>
    implements _$ModelViewMainStateCopyWith<$Res> {
  __$ModelViewMainStateCopyWithImpl(
      _ModelViewMainState _value, $Res Function(_ModelViewMainState) _then)
      : super(_value, (v) => _then(v as _ModelViewMainState));

  @override
  _ModelViewMainState get _value => super._value as _ModelViewMainState;

  @override
  $Res call({
    Object? currentClasses = freezed,
    Object? terms = freezed,
  }) {
    return _then(_ModelViewMainState(
      currentClasses == freezed
          ? _value.currentClasses
          : currentClasses // ignore: cast_nullable_to_non_nullable
              as CurrentClassesVmState,
      terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as TermsVmState,
    ));
  }
}

/// @nodoc

class _$_ModelViewMainState
    with DiagnosticableTreeMixin
    implements _ModelViewMainState {
  const _$_ModelViewMainState(this.currentClasses, this.terms);

  @override
  final CurrentClassesVmState currentClasses;
  @override
  final TermsVmState terms;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModelViewMainState(currentClasses: $currentClasses, terms: $terms)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ModelViewMainState'))
      ..add(DiagnosticsProperty('currentClasses', currentClasses))
      ..add(DiagnosticsProperty('terms', terms));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelViewMainState &&
            (identical(other.currentClasses, currentClasses) ||
                const DeepCollectionEquality()
                    .equals(other.currentClasses, currentClasses)) &&
            (identical(other.terms, terms) ||
                const DeepCollectionEquality().equals(other.terms, terms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentClasses) ^
      const DeepCollectionEquality().hash(terms);

  @JsonKey(ignore: true)
  @override
  _$ModelViewMainStateCopyWith<_ModelViewMainState> get copyWith =>
      __$ModelViewMainStateCopyWithImpl<_ModelViewMainState>(this, _$identity);
}

abstract class _ModelViewMainState implements ModelViewMainState {
  const factory _ModelViewMainState(
          CurrentClassesVmState currentClasses, TermsVmState terms) =
      _$_ModelViewMainState;

  @override
  CurrentClassesVmState get currentClasses =>
      throw _privateConstructorUsedError;
  @override
  TermsVmState get terms => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ModelViewMainStateCopyWith<_ModelViewMainState> get copyWith =>
      throw _privateConstructorUsedError;
}
