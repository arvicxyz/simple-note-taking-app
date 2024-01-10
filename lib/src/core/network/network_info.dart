import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@lazySingleton
abstract class NetworkInfo {
  @factoryMethod
  const factory NetworkInfo({required InternetConnectionChecker connectionChecker}) =
      _NetworkInfoImpl;

  Future<bool> get isConnected;
}

class _NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  const _NetworkInfoImpl({required this.connectionChecker});

  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
