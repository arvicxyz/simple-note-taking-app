import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../data/models/_models.dart';

part 'note_entity.freezed.dart';

@freezed
class NoteEntity with _$NoteEntity {
  const factory NoteEntity({
    required String id,
    required String note,
    required bool completed,
    required int userId,
    @Default(false) bool isDeleted,
    DateTime? deletedOn,
  }) = _NoteEntity;

  factory NoteEntity.empty() => NoteEntity(
        id: const Uuid().v1(),
        note: "",
        completed: false,
        userId: 0,
      );

  factory NoteEntity.fromModel(NoteModel model) {
    return NoteEntity(
      id: model.id.toString(),
      note: model.note,
      completed: model.completed,
      userId: model.userId,
      isDeleted: model.isDeleted,
      deletedOn: model.deletedOn,
    );
  }
}
