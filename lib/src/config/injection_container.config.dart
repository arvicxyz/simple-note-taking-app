// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i3;
import 'package:logger/logger.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../core/network/_network.dart' as _i17;
import '../core/network/network_info.dart' as _i5;
import '../features/note/data/data_sources/_data_sources.dart' as _i16;
import '../features/note/data/data_sources/note_local_source.dart' as _i11;
import '../features/note/data/data_sources/note_remote_source.dart' as _i12;
import '../features/note/data/data_sources/services/_services.dart' as _i13;
import '../features/note/data/data_sources/services/note_api_service.dart'
    as _i9;
import '../features/note/data/repositories/note_repository.dart' as _i15;
import '../features/note/domain/_domain.dart' as _i19;
import '../features/note/domain/repositories/_repositories.dart' as _i14;
import '../features/note/domain/use_cases/add_note_use_case.dart' as _i20;
import '../features/note/domain/use_cases/delete_note_use_case.dart' as _i21;
import '../features/note/domain/use_cases/get_all_note_use_case.dart' as _i22;
import '../features/note/domain/use_cases/get_note_use_case.dart' as _i23;
import '../features/note/domain/use_cases/update_note_use_case.dart' as _i18;
import '../features/note/presentation/blocs/note_details/note_details_bloc.dart'
    as _i24;
import '../features/note/presentation/blocs/note_list/note_list_bloc.dart'
    as _i25;
import '_config.dart' as _i10;
import 'app_config.dart' as _i7;
import 'register_module.dart' as _i26;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.InternetConnectionChecker>(
      registerModule.internetConnectionChecker());
  gh.singleton<_i4.Logger>(registerModule.logger);
  gh.lazySingleton<_i5.NetworkInfo>(() =>
      _i5.NetworkInfo(connectionChecker: gh<_i3.InternetConnectionChecker>()));
  await gh.singletonAsync<_i6.SharedPreferences>(
    () => registerModule.sharedPreferences,
    preResolve: true,
  );
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'baseUrl',
  );
  gh.factory<String>(
    () => registerModule.apiKey,
    instanceName: 'apiKey',
  );
  gh.singleton<_i7.AppConfig>(_i7.AppConfig(
    baseUrl: gh<String>(instanceName: 'baseUrl'),
    apiKey: gh<String>(instanceName: 'apiKey'),
  ));
  gh.singleton<_i8.Dio>(registerModule.dio(gh<_i7.AppConfig>()));
  gh.factory<_i9.NoteApiService>(() => _i9.NoteApiServiceImpl(
        gh<_i8.Dio>(),
        gh<_i10.AppConfig>(),
      ));
  gh.lazySingleton<_i11.NoteLocalSource>(() =>
      _i11.NoteLocalSource(sharedPreferences: gh<_i6.SharedPreferences>()));
  gh.lazySingleton<_i12.NoteRemoteSource>(
      () => _i12.NoteRemoteSource(noteApiService: gh<_i13.NoteApiService>()));
  gh.factory<_i14.NoteRepository>(() => _i15.NoteRepositoryImpl(
        localSource: gh<_i16.NoteLocalSource>(),
        remoteSource: gh<_i16.NoteRemoteSource>(),
        networkInfo: gh<_i17.NetworkInfo>(),
      ));
  gh.lazySingleton<_i18.UpdateNoteUseCase>(
      () => _i18.UpdateNoteUseCase(gh<_i19.NoteRepository>()));
  gh.lazySingleton<_i20.AddNoteUseCase>(
      () => _i20.AddNoteUseCase(gh<_i19.NoteRepository>()));
  gh.lazySingleton<_i21.DeleteNoteUseCase>(
      () => _i21.DeleteNoteUseCase(gh<_i19.NoteRepository>()));
  gh.lazySingleton<_i22.GetAllNoteUseCase>(
      () => _i22.GetAllNoteUseCase(gh<_i19.NoteRepository>()));
  gh.lazySingleton<_i23.GetNoteUseCase>(
      () => _i23.GetNoteUseCase(gh<_i19.NoteRepository>()));
  gh.lazySingleton<_i24.NoteDetailsBloc>(() => _i24.NoteDetailsBloc(
        gh<_i19.GetNoteUseCase>(),
        gh<_i19.AddNoteUseCase>(),
        gh<_i19.UpdateNoteUseCase>(),
        gh<_i19.DeleteNoteUseCase>(),
      ));
  gh.lazySingleton<_i25.NoteListBloc>(() => _i25.NoteListBloc(
        gh<_i19.GetAllNoteUseCase>(),
        gh<_i19.DeleteNoteUseCase>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i26.RegisterModule {}
