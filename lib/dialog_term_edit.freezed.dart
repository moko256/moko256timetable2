// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dialog_term_edit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DialogTermEditContentTearOff {
  const _$DialogTermEditContentTearOff();

  _DialogTermEditContent call(
      String name, List<WeekDay> weekDays, int periodMax) {
    return _DialogTermEditContent(
      name,
      weekDays,
      periodMax,
    );
  }
}

/// @nodoc
const $DialogTermEditContent = _$DialogTermEditContentTearOff();

/// @nodoc
mixin _$DialogTermEditContent {
  String get name => throw _privateConstructorUsedError;
  List<WeekDay> get weekDays => throw _privateConstructorUsedError;
  int get periodMax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DialogTermEditContentCopyWith<DialogTermEditContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DialogTermEditContentCopyWith<$Res> {
  factory $DialogTermEditContentCopyWith(DialogTermEditContent value,
          $Res Function(DialogTermEditContent) then) =
      _$DialogTermEditContentCopyWithImpl<$Res>;
  $Res call({String name, List<WeekDay> weekDays, int periodMax});
}

/// @nodoc
class _$DialogTermEditContentCopyWithImpl<$Res>
    implements $DialogTermEditContentCopyWith<$Res> {
  _$DialogTermEditContentCopyWithImpl(this._value, this._then);

  final DialogTermEditContent _value;
  // ignore: unused_field
  final $Res Function(DialogTermEditContent) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? weekDays = freezed,
    Object? periodMax = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$DialogTermEditContentCopyWith<$Res>
    implements $DialogTermEditContentCopyWith<$Res> {
  factory _$DialogTermEditContentCopyWith(_DialogTermEditContent value,
          $Res Function(_DialogTermEditContent) then) =
      __$DialogTermEditContentCopyWithImpl<$Res>;
  @override
  $Res call({String name, List<WeekDay> weekDays, int periodMax});
}

/// @nodoc
class __$DialogTermEditContentCopyWithImpl<$Res>
    extends _$DialogTermEditContentCopyWithImpl<$Res>
    implements _$DialogTermEditContentCopyWith<$Res> {
  __$DialogTermEditContentCopyWithImpl(_DialogTermEditContent _value,
      $Res Function(_DialogTermEditContent) _then)
      : super(_value, (v) => _then(v as _DialogTermEditContent));

  @override
  _DialogTermEditContent get _value => super._value as _DialogTermEditContent;

  @override
  $Res call({
    Object? name = freezed,
    Object? weekDays = freezed,
    Object? periodMax = freezed,
  }) {
    return _then(_DialogTermEditContent(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_DialogTermEditContent
    with DiagnosticableTreeMixin
    implements _DialogTermEditContent {
  const _$_DialogTermEditContent(this.name, this.weekDays, this.periodMax);

  @override
  final String name;
  @override
  final List<WeekDay> weekDays;
  @override
  final int periodMax;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DialogTermEditContent(name: $name, weekDays: $weekDays, periodMax: $periodMax)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DialogTermEditContent'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('weekDays', weekDays))
      ..add(DiagnosticsProperty('periodMax', periodMax));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DialogTermEditContent &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(weekDays) ^
      const DeepCollectionEquality().hash(periodMax);

  @JsonKey(ignore: true)
  @override
  _$DialogTermEditContentCopyWith<_DialogTermEditContent> get copyWith =>
      __$DialogTermEditContentCopyWithImpl<_DialogTermEditContent>(
          this, _$identity);
}

abstract class _DialogTermEditContent implements DialogTermEditContent {
  const factory _DialogTermEditContent(
          String name, List<WeekDay> weekDays, int periodMax) =
      _$_DialogTermEditContent;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<WeekDay> get weekDays => throw _privateConstructorUsedError;
  @override
  int get periodMax => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DialogTermEditContentCopyWith<_DialogTermEditContent> get copyWith =>
      throw _privateConstructorUsedError;
}
