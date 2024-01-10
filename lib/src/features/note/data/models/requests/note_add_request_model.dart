import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_add_request_model.g.dart';

@JsonSerializable()
class NoteAddRequestModel {
  @JsonKey(name: 'todo')
  final String note;

  @JsonKey(name: 'completed')
  final bool completed;

  @JsonKey(name: 'userId')
  final int userId;

  const NoteAddRequestModel({
    required this.note,
    required this.completed,
    required this.userId,
  });

  factory NoteAddRequestModel.fromJson(Map<String, dynamic> json) =>
      _$NoteAddRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$NoteAddRequestModelToJson(this);
}
