import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_update_request_model.g.dart';

@JsonSerializable()
class NoteUpdateRequestModel {
  @JsonKey(name: 'todo')
  final String note;

  @JsonKey(name: 'completed')
  final bool completed;

  const NoteUpdateRequestModel({
    required this.note,
    required this.completed,
  });

  factory NoteUpdateRequestModel.fromJson(Map<String, dynamic> json) =>
      _$NoteUpdateRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$NoteUpdateRequestModelToJson(this);
}
