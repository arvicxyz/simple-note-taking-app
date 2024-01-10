// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteListModel _$NoteListModelFromJson(Map<String, dynamic> json) =>
    NoteListModel(
      notes: (json['notes'] as List<dynamic>)
          .map((e) => NoteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
