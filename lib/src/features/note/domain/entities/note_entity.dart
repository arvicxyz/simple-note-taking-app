import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/_models.dart';

part 'note_entity.freezed.dart';

@freezed
class NoteEntity with _$NoteEntity {
  const factory NoteEntity({
    required int id,
    required String note,
    required bool completed,
    required int userId,
    @Default(false) bool isDeleted,
    DateTime? deletedOn,
  }) = _NoteEntity;

  factory NoteEntity.fromModel(NoteModel model) {
    return NoteEntity(
      id: model.id,
      note: model.note,
      completed: model.completed,
      userId: model.userId,
      isDeleted: model.isDeleted,
      deletedOn: model.deletedOn,
    );
  }
}
