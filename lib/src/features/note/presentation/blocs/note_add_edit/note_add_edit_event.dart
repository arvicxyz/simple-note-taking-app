part of 'note_add_edit_bloc.dart';

@freezed
class NoteAddEditEvent with _$NoteAddEditEvent {
  const factory NoteAddEditEvent.get({
    required String id,
  }) = _NoteAddEditEventGet;

  const factory NoteAddEditEvent.add({
    required NoteEntity entity,
  }) = _NoteAddEditEventAdd;

  const factory NoteAddEditEvent.update({
    required String id,
    required NoteEntity entity,
  }) = _NoteAddEditEventUpdate;

  const factory NoteAddEditEvent.invokeError({
    required String errorMessage,
  }) = _NoteAddEditEventInvokeError;
}
