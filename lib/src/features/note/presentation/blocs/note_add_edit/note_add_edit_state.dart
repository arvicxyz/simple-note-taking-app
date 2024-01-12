part of 'note_add_edit_bloc.dart';

@freezed
class NoteAddEditState with _$NoteAddEditState {
  const factory NoteAddEditState.idle({required NoteEntity entity}) = _NoteAddEditStateIdle;
  const factory NoteAddEditState.loading() = _NoteAddEditStateLoading;
  const factory NoteAddEditState.success() = _NoteAddEditStateSuccess;
  const factory NoteAddEditState.error({required String errorMessage}) = _NoteAddEditStateError;
}
