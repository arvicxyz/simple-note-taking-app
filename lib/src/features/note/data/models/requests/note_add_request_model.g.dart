// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_add_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteAddRequestModel _$NoteAddRequestModelFromJson(Map<String, dynamic> json) =>
    NoteAddRequestModel(
      note: json['todo'] as String,
      completed: json['completed'] as bool,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$NoteAddRequestModelToJson(
        NoteAddRequestModel instance) =>
    <String, dynamic>{
      'todo': instance.note,
      'completed': instance.completed,
      'userId': instance.userId,
    };
