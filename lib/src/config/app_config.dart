import 'package:injectable/injectable.dart';

@singleton
class AppConfig {
  final String baseUrl;
  final String apiKey;

  @factoryMethod
  const AppConfig({
    @Named('baseUrl') required this.baseUrl,
    @Named('apiKey') required this.apiKey,
  });
}
