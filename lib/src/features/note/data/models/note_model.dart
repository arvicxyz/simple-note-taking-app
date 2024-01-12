import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/_entities.dart';

part 'note_model.freezed.dart';
part 'note_model.g.dart';

@freezed
class NoteModel with _$NoteModel {
  const factory NoteModel({
    required String id,
    @JsonKey(name: 'todo') required String note,
    required bool completed,
    required int userId,
    @Default(false) bool isDeleted,
    DateTime? deletedOn,
  }) = _NoteModel;

  factory NoteModel.fromJson(Map<String, dynamic> json) => _$NoteModelFromJson(json);

  factory NoteModel.fromEntity(NoteEntity entity) {
    return NoteModel(
      id: entity.id,
      note: entity.note,
      completed: entity.completed,
      userId: entity.userId,
      isDeleted: entity.isDeleted,
      deletedOn: entity.deletedOn,
    );
  }
}
