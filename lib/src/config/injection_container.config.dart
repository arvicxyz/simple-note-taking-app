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

import '../core/network/network_info.dart' as _i5;
import 'app_config.dart' as _i7;
import 'register_module.dart' as _i9;

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
  return getIt;
}

class _$RegisterModule extends _i9.RegisterModule {}
