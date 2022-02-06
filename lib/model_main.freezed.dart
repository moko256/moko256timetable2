// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'model_main.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ModelStateTearOff {
  const _$ModelStateTearOff();

  _ModelState call(ModelVoTermKey? currentTermKey,
      ModelVoClasses? currentClasses, ModelVoTerms? terms) {
    return _ModelState(
      currentTermKey,
      currentClasses,
      terms,
    );
  }
}

/// @nodoc
const $ModelState = _$ModelStateTearOff();

/// @nodoc
mixin _$ModelState {
  ModelVoTermKey? get currentTermKey => throw _privateConstructorUsedError;
  ModelVoClasses? get currentClasses => throw _privateConstructorUsedError;
  ModelVoTerms? get terms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ModelStateCopyWith<ModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelStateCopyWith<$Res> {
  factory $ModelStateCopyWith(
          ModelState value, $Res Function(ModelState) then) =
      _$ModelStateCopyWithImpl<$Res>;
  $Res call(
      {ModelVoTermKey? currentTermKey,
      ModelVoClasses? currentClasses,
      ModelVoTerms? terms});

  $ModelVoTermKeyCopyWith<$Res>? get currentTermKey;
  $ModelVoClassesCopyWith<$Res>? get currentClasses;
  $ModelVoTermsCopyWith<$Res>? get terms;
}

/// @nodoc
class _$ModelStateCopyWithImpl<$Res> implements $ModelStateCopyWith<$Res> {
  _$ModelStateCopyWithImpl(this._value, this._then);

  final ModelState _value;
  // ignore: unused_field
  final $Res Function(ModelState) _then;

  @override
  $Res call({
    Object? currentTermKey = freezed,
    Object? currentClasses = freezed,
    Object? terms = freezed,
  }) {
    return _then(_value.copyWith(
      currentTermKey: currentTermKey == freezed
          ? _value.currentTermKey
          : currentTermKey // ignore: cast_nullable_to_non_nullable
              as ModelVoTermKey?,
      currentClasses: currentClasses == freezed
          ? _value.currentClasses
          : currentClasses // ignore: cast_nullable_to_non_nullable
              as ModelVoClasses?,
      terms: terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as ModelVoTerms?,
    ));
  }

  @override
  $ModelVoTermKeyCopyWith<$Res>? get currentTermKey {
    if (_value.currentTermKey == null) {
      return null;
    }

    return $ModelVoTermKeyCopyWith<$Res>(_value.currentTermKey!, (value) {
      return _then(_value.copyWith(currentTermKey: value));
    });
  }

  @override
  $ModelVoClassesCopyWith<$Res>? get currentClasses {
    if (_value.currentClasses == null) {
      return null;
    }

    return $ModelVoClassesCopyWith<$Res>(_value.currentClasses!, (value) {
      return _then(_value.copyWith(currentClasses: value));
    });
  }

  @override
  $ModelVoTermsCopyWith<$Res>? get terms {
    if (_value.terms == null) {
      return null;
    }

    return $ModelVoTermsCopyWith<$Res>(_value.terms!, (value) {
      return _then(_value.copyWith(terms: value));
    });
  }
}

/// @nodoc
abstract class _$ModelStateCopyWith<$Res> implements $ModelStateCopyWith<$Res> {
  factory _$ModelStateCopyWith(
          _ModelState value, $Res Function(_ModelState) then) =
      __$ModelStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ModelVoTermKey? currentTermKey,
      ModelVoClasses? currentClasses,
      ModelVoTerms? terms});

  @override
  $ModelVoTermKeyCopyWith<$Res>? get currentTermKey;
  @override
  $ModelVoClassesCopyWith<$Res>? get currentClasses;
  @override
  $ModelVoTermsCopyWith<$Res>? get terms;
}

/// @nodoc
class __$ModelStateCopyWithImpl<$Res> extends _$ModelStateCopyWithImpl<$Res>
    implements _$ModelStateCopyWith<$Res> {
  __$ModelStateCopyWithImpl(
      _ModelState _value, $Res Function(_ModelState) _then)
      : super(_value, (v) => _then(v as _ModelState));

  @override
  _ModelState get _value => super._value as _ModelState;

  @override
  $Res call({
    Object? currentTermKey = freezed,
    Object? currentClasses = freezed,
    Object? terms = freezed,
  }) {
    return _then(_ModelState(
      currentTermKey == freezed
          ? _value.currentTermKey
          : currentTermKey // ignore: cast_nullable_to_non_nullable
              as ModelVoTermKey?,
      currentClasses == freezed
          ? _value.currentClasses
          : currentClasses // ignore: cast_nullable_to_non_nullable
              as ModelVoClasses?,
      terms == freezed
          ? _value.terms
          : terms // ignore: cast_nullable_to_non_nullable
              as ModelVoTerms?,
    ));
  }
}

/// @nodoc

class _$_ModelState with DiagnosticableTreeMixin implements _ModelState {
  const _$_ModelState(this.currentTermKey, this.currentClasses, this.terms);

  @override
  final ModelVoTermKey? currentTermKey;
  @override
  final ModelVoClasses? currentClasses;
  @override
  final ModelVoTerms? terms;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ModelState(currentTermKey: $currentTermKey, currentClasses: $currentClasses, terms: $terms)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ModelState'))
      ..add(DiagnosticsProperty('currentTermKey', currentTermKey))
      ..add(DiagnosticsProperty('currentClasses', currentClasses))
      ..add(DiagnosticsProperty('terms', terms));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ModelState &&
            (identical(other.currentTermKey, currentTermKey) ||
                const DeepCollectionEquality()
                    .equals(other.currentTermKey, currentTermKey)) &&
            (identical(other.currentClasses, currentClasses) ||
                const DeepCollectionEquality()
                    .equals(other.currentClasses, currentClasses)) &&
            (identical(other.terms, terms) ||
                const DeepCollectionEquality().equals(other.terms, terms)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentTermKey) ^
      const DeepCollectionEquality().hash(currentClasses) ^
      const DeepCollectionEquality().hash(terms);

  @JsonKey(ignore: true)
  @override
  _$ModelStateCopyWith<_ModelState> get copyWith =>
      __$ModelStateCopyWithImpl<_ModelState>(this, _$identity);
}

abstract class _ModelState implements ModelState {
  const factory _ModelState(ModelVoTermKey? currentTermKey,
      ModelVoClasses? currentClasses, ModelVoTerms? terms) = _$_ModelState;

  @override
  ModelVoTermKey? get currentTermKey => throw _privateConstructorUsedError;
  @override
  ModelVoClasses? get currentClasses => throw _privateConstructorUsedError;
  @override
  ModelVoTerms? get terms => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ModelStateCopyWith<_ModelState> get copyWith =>
      throw _privateConstructorUsedError;
}
