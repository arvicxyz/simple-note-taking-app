part of 'note_add_edit_bloc.dart';

@freezed
class NoteAddEditEvent with _$NoteAddEditEvent {
  const factory NoteAddEditEvent.get({
    required int id,
  }) = _NoteAddEditEventGet;

  const factory NoteAddEditEvent.add({
    required NoteEntity entity,
  }) = _NoteAddEditEventAdd;

  const factory NoteAddEditEvent.update({
    required int id,
    required NoteEntity entity,
  }) = _NoteAddEditEventUpdate;
}
