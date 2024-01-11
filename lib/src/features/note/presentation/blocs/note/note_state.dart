part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState.idle({required List<NoteEntity> entityList}) = _NoteStateIdle;
  const factory NoteState.loading() = _NoteStateLoading;
  const factory NoteState.success() = _NoteStateSuccess;
  const factory NoteState.error({required String errorMessage}) = _NoteStateError;
}
