part of 'note_list_bloc.dart';

@freezed
class NoteListEvent with _$NoteListEvent {
  const factory NoteListEvent.getAll() = _NoteListEventGetAll;
  const factory NoteListEvent.delete({required int id}) = _NoteListEventDelete;
}
