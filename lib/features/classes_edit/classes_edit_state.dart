import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:moko256timetable2/features/classes/classes_state.dart';

part 'classes_edit_state.freezed.dart';

final storeEdit = StateProvider((ref) => const StateEdit.notEditing());

@freezed
class StateEditing with _$StateEditing {
  factory StateEditing(
    ClassKey key,
    String title,
    String room,
  ) = _StateEditing;
}

@freezed
class StateEdit with _$StateEdit {
  const factory StateEdit.notEditing() = NotEditing;
  const factory StateEdit.editing(StateEditing editing) = Editing;
}
