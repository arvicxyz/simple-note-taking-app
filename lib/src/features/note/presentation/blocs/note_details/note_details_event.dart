part of 'note_details_bloc.dart';

@freezed
class NoteDetailsEvent with _$NoteDetailsEvent {
  const factory NoteDetailsEvent.get({
    required int id,
  }) = _NoteDetailsEventGet;

  const factory NoteDetailsEvent.delete({
    required int id,
  }) = _NoteDetailsEventDelete;
}
