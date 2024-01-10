import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_config.dart';
import 'flavor/_flavor.dart';

@module
abstract class RegisterModule {
  @Named('baseUrl')
  String get baseUrl => flavorConfig.baseUrl;

  @Named('apiKey')
  String get apiKey => flavorConfig.apiKey;

  @singleton
  Logger get logger => Logger();

  @singleton
  @preResolve
  Future<SharedPreferences> get sharedPreferences async => await SharedPreferences.getInstance();

  @singleton
  Dio dio(AppConfig config) => Dio()..options.baseUrl = config.baseUrl;

  @singleton
  InternetConnectionChecker internetConnectionChecker() => InternetConnectionChecker();
}
