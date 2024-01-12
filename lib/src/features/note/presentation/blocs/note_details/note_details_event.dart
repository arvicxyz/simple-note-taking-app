part of 'note_details_bloc.dart';

@freezed
class NoteDetailsEvent with _$NoteDetailsEvent {
  const factory NoteDetailsEvent.get({
    required String id,
  }) = _NoteDetailsEventGet;

  const factory NoteDetailsEvent.delete({
    required String id,
  }) = _NoteDetailsEventDelete;
}
