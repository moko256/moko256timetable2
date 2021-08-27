// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classes_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StateEditingTearOff {
  const _$StateEditingTearOff();

  _StateEditing call(ClassKey key, String title, String room) {
    return _StateEditing(
      key,
      title,
      room,
    );
  }
}

/// @nodoc
const $StateEditing = _$StateEditingTearOff();

/// @nodoc
mixin _$StateEditing {
  ClassKey get key => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateEditingCopyWith<StateEditing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateEditingCopyWith<$Res> {
  factory $StateEditingCopyWith(
          StateEditing value, $Res Function(StateEditing) then) =
      _$StateEditingCopyWithImpl<$Res>;
  $Res call({ClassKey key, String title, String room});

  $ClassKeyCopyWith<$Res> get key;
}

/// @nodoc
class _$StateEditingCopyWithImpl<$Res> implements $StateEditingCopyWith<$Res> {
  _$StateEditingCopyWithImpl(this._value, this._then);

  final StateEditing _value;
  // ignore: unused_field
  final $Res Function(StateEditing) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? title = freezed,
    Object? room = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as ClassKey,
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

  @override
  $ClassKeyCopyWith<$Res> get key {
    return $ClassKeyCopyWith<$Res>(_value.key, (value) {
      return _then(_value.copyWith(key: value));
    });
  }
}

/// @nodoc
abstract class _$StateEditingCopyWith<$Res>
    implements $StateEditingCopyWith<$Res> {
  factory _$StateEditingCopyWith(
          _StateEditing value, $Res Function(_StateEditing) then) =
      __$StateEditingCopyWithImpl<$Res>;
  @override
  $Res call({ClassKey key, String title, String room});

  @override
  $ClassKeyCopyWith<$Res> get key;
}

/// @nodoc
class __$StateEditingCopyWithImpl<$Res> extends _$StateEditingCopyWithImpl<$Res>
    implements _$StateEditingCopyWith<$Res> {
  __$StateEditingCopyWithImpl(
      _StateEditing _value, $Res Function(_StateEditing) _then)
      : super(_value, (v) => _then(v as _StateEditing));

  @override
  _StateEditing get _value => super._value as _StateEditing;

  @override
  $Res call({
    Object? key = freezed,
    Object? title = freezed,
    Object? room = freezed,
  }) {
    return _then(_StateEditing(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as ClassKey,
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

class _$_StateEditing implements _StateEditing {
  _$_StateEditing(this.key, this.title, this.room);

  @override
  final ClassKey key;
  @override
  final String title;
  @override
  final String room;

  @override
  String toString() {
    return 'StateEditing(key: $key, title: $title, room: $room)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StateEditing &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.room, room) ||
                const DeepCollectionEquality().equals(other.room, room)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(room);

  @JsonKey(ignore: true)
  @override
  _$StateEditingCopyWith<_StateEditing> get copyWith =>
      __$StateEditingCopyWithImpl<_StateEditing>(this, _$identity);
}

abstract class _StateEditing implements StateEditing {
  factory _StateEditing(ClassKey key, String title, String room) =
      _$_StateEditing;

  @override
  ClassKey get key => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get room => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StateEditingCopyWith<_StateEditing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StateEditTearOff {
  const _$StateEditTearOff();

  NotEditing notEditing() {
    return const NotEditing();
  }

  Editing editing(StateEditing editing) {
    return Editing(
      editing,
    );
  }
}

/// @nodoc
const $StateEdit = _$StateEditTearOff();

/// @nodoc
mixin _$StateEdit {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notEditing,
    required TResult Function(StateEditing editing) editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notEditing,
    TResult Function(StateEditing editing)? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notEditing,
    TResult Function(StateEditing editing)? editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotEditing value) notEditing,
    required TResult Function(Editing value) editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotEditing value)? notEditing,
    TResult Function(Editing value)? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotEditing value)? notEditing,
    TResult Function(Editing value)? editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateEditCopyWith<$Res> {
  factory $StateEditCopyWith(StateEdit value, $Res Function(StateEdit) then) =
      _$StateEditCopyWithImpl<$Res>;
}

/// @nodoc
class _$StateEditCopyWithImpl<$Res> implements $StateEditCopyWith<$Res> {
  _$StateEditCopyWithImpl(this._value, this._then);

  final StateEdit _value;
  // ignore: unused_field
  final $Res Function(StateEdit) _then;
}

/// @nodoc
abstract class $NotEditingCopyWith<$Res> {
  factory $NotEditingCopyWith(
          NotEditing value, $Res Function(NotEditing) then) =
      _$NotEditingCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotEditingCopyWithImpl<$Res> extends _$StateEditCopyWithImpl<$Res>
    implements $NotEditingCopyWith<$Res> {
  _$NotEditingCopyWithImpl(NotEditing _value, $Res Function(NotEditing) _then)
      : super(_value, (v) => _then(v as NotEditing));

  @override
  NotEditing get _value => super._value as NotEditing;
}

/// @nodoc

class _$NotEditing implements NotEditing {
  const _$NotEditing();

  @override
  String toString() {
    return 'StateEdit.notEditing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotEditing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notEditing,
    required TResult Function(StateEditing editing) editing,
  }) {
    return notEditing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notEditing,
    TResult Function(StateEditing editing)? editing,
  }) {
    return notEditing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notEditing,
    TResult Function(StateEditing editing)? editing,
    required TResult orElse(),
  }) {
    if (notEditing != null) {
      return notEditing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotEditing value) notEditing,
    required TResult Function(Editing value) editing,
  }) {
    return notEditing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotEditing value)? notEditing,
    TResult Function(Editing value)? editing,
  }) {
    return notEditing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotEditing value)? notEditing,
    TResult Function(Editing value)? editing,
    required TResult orElse(),
  }) {
    if (notEditing != null) {
      return notEditing(this);
    }
    return orElse();
  }
}

abstract class NotEditing implements StateEdit {
  const factory NotEditing() = _$NotEditing;
}

/// @nodoc
abstract class $EditingCopyWith<$Res> {
  factory $EditingCopyWith(Editing value, $Res Function(Editing) then) =
      _$EditingCopyWithImpl<$Res>;
  $Res call({StateEditing editing});

  $StateEditingCopyWith<$Res> get editing;
}

/// @nodoc
class _$EditingCopyWithImpl<$Res> extends _$StateEditCopyWithImpl<$Res>
    implements $EditingCopyWith<$Res> {
  _$EditingCopyWithImpl(Editing _value, $Res Function(Editing) _then)
      : super(_value, (v) => _then(v as Editing));

  @override
  Editing get _value => super._value as Editing;

  @override
  $Res call({
    Object? editing = freezed,
  }) {
    return _then(Editing(
      editing == freezed
          ? _value.editing
          : editing // ignore: cast_nullable_to_non_nullable
              as StateEditing,
    ));
  }

  @override
  $StateEditingCopyWith<$Res> get editing {
    return $StateEditingCopyWith<$Res>(_value.editing, (value) {
      return _then(_value.copyWith(editing: value));
    });
  }
}

/// @nodoc

class _$Editing implements Editing {
  const _$Editing(this.editing);

  @override
  final StateEditing editing;

  @override
  String toString() {
    return 'StateEdit.editing(editing: $editing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Editing &&
            (identical(other.editing, editing) ||
                const DeepCollectionEquality().equals(other.editing, editing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(editing);

  @JsonKey(ignore: true)
  @override
  $EditingCopyWith<Editing> get copyWith =>
      _$EditingCopyWithImpl<Editing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notEditing,
    required TResult Function(StateEditing editing) editing,
  }) {
    return editing(this.editing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notEditing,
    TResult Function(StateEditing editing)? editing,
  }) {
    return editing?.call(this.editing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notEditing,
    TResult Function(StateEditing editing)? editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this.editing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotEditing value) notEditing,
    required TResult Function(Editing value) editing,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NotEditing value)? notEditing,
    TResult Function(Editing value)? editing,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotEditing value)? notEditing,
    TResult Function(Editing value)? editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }
}

abstract class Editing implements StateEdit {
  const factory Editing(StateEditing editing) = _$Editing;

  StateEditing get editing => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditingCopyWith<Editing> get copyWith => throw _privateConstructorUsedError;
}
