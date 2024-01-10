import 'flavor.dart';

AppFlavor flavorConfig = const AppFlavor.dev();

class AppFlavor {
  final Flavor flavor;
  final String baseUrl;
  final String apiKey;

  const AppFlavor.dev()
      : flavor = Flavor.dev,
        baseUrl = "https://dummyjson.com",
        apiKey = "DevAPIkey";

  const AppFlavor.stg()
      : flavor = Flavor.stg,
        baseUrl = "https://stg.dummyjson.com",
        apiKey = "StgAPIkey";

  const AppFlavor.prod()
      : flavor = Flavor.prod,
        baseUrl = "https://prod.dummyjson.com",
        apiKey = "ProdAPIkey";
}
