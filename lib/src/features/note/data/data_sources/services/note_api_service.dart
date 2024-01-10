import 'package:dio/dio.dart' hide Headers;
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../config/app_config.dart';
import '../../models/_models.dart';

part 'note_api_service.g.dart';

abstract class NoteApiService {
  Future<NoteListModel?> getAllNote();

  Future<NoteModel?> getNote({required int id});

  Future<NoteModel?> addNote({required NoteAddRequestModel model});

  Future<NoteModel?> updateNote({
    required int id,
    required NoteUpdateRequestModel model,
  });

  Future<NoteModel?> deleteNote({required int id});
}

@RestApi()
@Injectable(as: NoteApiService)
abstract class NoteApiServiceImpl implements NoteApiService {
  @factoryMethod
  factory NoteApiServiceImpl(Dio dio, AppConfig appConfig) =>
      _NoteApiServiceImpl(dio, baseUrl: appConfig.baseUrl);

  @override
  @GET('/todos')
  Future<NoteListModel?> getAllNote();

  @override
  @GET('/todos/{id}')
  Future<NoteModel?> getNote({@Path('id') required int id});

  @override
  @POST('/todos/add')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<NoteModel?> addNote({@Body() required NoteAddRequestModel model});

  @override
  @PUT('/todos/{id}')
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<NoteModel?> updateNote({
    @Path('id') required int id,
    @Body() required NoteUpdateRequestModel model,
  });

  @override
  @DELETE('/todos/{id}')
  Future<NoteModel?> deleteNote({@Path('id') required int id});
}
