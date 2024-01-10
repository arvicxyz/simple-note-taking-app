import 'package:injectable/injectable.dart';

import 'services/note_api_service.dart';

@lazySingleton
abstract class NoteRemoteSource {
  @factoryMethod
  const factory NoteRemoteSource({required NoteApiService noteApiService}) = _NoteRemoteSourceImpl;

  NoteApiService get getNoteApiService;
}

class _NoteRemoteSourceImpl implements NoteRemoteSource {
  final NoteApiService noteApiService;

  const _NoteRemoteSourceImpl({required this.noteApiService});

  @override
  NoteApiService get getNoteApiService => noteApiService;
}
