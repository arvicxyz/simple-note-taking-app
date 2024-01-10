import 'package:json_annotation/json_annotation.dart';

import '_models.dart';

part 'note_list_model.g.dart';

@JsonSerializable(createToJson: false)
class NoteListModel {
  final List<NoteModel> notes;

  const NoteListModel({required this.notes});

  factory NoteListModel.fromJson(Map<String, dynamic> json) => _$NoteListModelFromJson(json);
}
