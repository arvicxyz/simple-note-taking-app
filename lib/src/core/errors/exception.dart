class ServerException implements Exception {
  final String errorMessage;

  ServerException({this.errorMessage = "Server exception occurred"});
}

class CacheException implements Exception {
  final String errorMessage;

  CacheException({this.errorMessage = "Cache exception occurred"});
}

class NetworkException implements Exception {
  final String errorMessage;

  NetworkException({this.errorMessage = "Network exception occurred"});
}
