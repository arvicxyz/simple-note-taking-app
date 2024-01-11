part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.getAll() = _NoteEventGetAll;
  const factory NoteEvent.add({required NoteEntity entity}) = _NoteEventAdd;
  const factory NoteEvent.update({required int id, required NoteEntity entity}) = _NoteEventUpdate;
  const factory NoteEvent.delete({required int id}) = _NoteEventDelete;
}
