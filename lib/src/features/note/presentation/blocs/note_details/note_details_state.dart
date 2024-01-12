part of 'note_details_bloc.dart';

@freezed
class NoteDetailsState with _$NoteDetailsState {
  const factory NoteDetailsState.idle({required NoteEntity entity}) = _NoteDetailsStateIdle;
  const factory NoteDetailsState.loading() = _NoteDetailsStateLoading;
  const factory NoteDetailsState.success({required NoteDetailsEvent event}) = _NoteDetailsStateSuccess;
  const factory NoteDetailsState.error({required String errorMessage}) = _NoteDetailsStateError;
}
