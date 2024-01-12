part of 'note_list_bloc.dart';

@freezed
class NoteListState with _$NoteListState {
  const factory NoteListState.idle({required List<NoteEntity> entityList}) = _NoteListStateIdle;
  const factory NoteListState.loading() = _NoteListStateLoading;
  const factory NoteListState.success({required NoteListEvent event}) = _NoteListStateSuccess;
  const factory NoteListState.error({required String errorMessage}) = _NoteListStateError;
}
