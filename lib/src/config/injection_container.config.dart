// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;
import 'package:logger/logger.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

import '../core/network/network_info.dart' as _i10;
import '../features/note/data/data_sources/note_local_source.dart' as _i16;
import '../features/note/data/data_sources/note_remote_source.dart' as _i17;
import '../features/note/data/data_sources/services/note_api_service.dart'
    as _i15;
import '../features/note/domain/_domain.dart' as _i4;
import '../features/note/domain/use_cases/add_note_use_case.dart' as _i3;
import '../features/note/domain/use_cases/delete_note_use_case.dart' as _i5;
import '../features/note/domain/use_cases/get_all_note_use_case.dart' as _i6;
import '../features/note/domain/use_cases/get_note_use_case.dart' as _i7;
import '../features/note/domain/use_cases/update_note_use_case.dart' as _i12;
import 'app_config.dart' as _i13;
import 'register_module.dart' as _i18;

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
  gh.lazySingleton<_i3.AddNoteUseCase>(
      () => _i3.AddNoteUseCase(gh<_i4.NoteRepository>()));
  gh.lazySingleton<_i5.DeleteNoteUseCase>(
      () => _i5.DeleteNoteUseCase(gh<_i4.NoteRepository>()));
  gh.lazySingleton<_i6.GetAllNoteUseCase>(
      () => _i6.GetAllNoteUseCase(gh<_i4.NoteRepository>()));
  gh.lazySingleton<_i7.GetNoteUseCase>(
      () => _i7.GetNoteUseCase(gh<_i4.NoteRepository>()));
  gh.singleton<_i8.InternetConnectionChecker>(
      registerModule.internetConnectionChecker());
  gh.singleton<_i9.Logger>(registerModule.logger);
  gh.lazySingleton<_i10.NetworkInfo>(() =>
      _i10.NetworkInfo(connectionChecker: gh<_i8.InternetConnectionChecker>()));
  await gh.singletonAsync<_i11.SharedPreferences>(
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
  gh.lazySingleton<_i12.UpdateNoteUseCase>(
      () => _i12.UpdateNoteUseCase(gh<_i4.NoteRepository>()));
  gh.singleton<_i13.AppConfig>(_i13.AppConfig(
    baseUrl: gh<String>(instanceName: 'baseUrl'),
    apiKey: gh<String>(instanceName: 'apiKey'),
  ));
  gh.singleton<_i14.Dio>(registerModule.dio(gh<_i13.AppConfig>()));
  gh.factory<_i15.NoteApiService>(() => _i15.NoteApiServiceImpl(
        gh<_i14.Dio>(),
        gh<_i13.AppConfig>(),
      ));
  gh.lazySingleton<_i16.NoteLocalSource>(() =>
      _i16.NoteLocalSource(sharedPreferences: gh<_i11.SharedPreferences>()));
  gh.lazySingleton<_i17.NoteRemoteSource>(
      () => _i17.NoteRemoteSource(noteApiService: gh<_i15.NoteApiService>()));
  return getIt;
}

class _$RegisterModule extends _i18.RegisterModule {}
