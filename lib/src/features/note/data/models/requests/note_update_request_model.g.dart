// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_update_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteUpdateRequestModel _$NoteUpdateRequestModelFromJson(
        Map<String, dynamic> json) =>
    NoteUpdateRequestModel(
      note: json['todo'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$NoteUpdateRequestModelToJson(
        NoteUpdateRequestModel instance) =>
    <String, dynamic>{
      'todo': instance.note,
      'completed': instance.completed,
    };
