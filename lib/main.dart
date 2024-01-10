import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/config/_config.dart';
import 'src/localization/_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Setup status bar
  SystemChrome.setSystemUIOverlayStyle(
    (Platform.isIOS)
        ? SystemUiOverlayStyle.light
        : const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          ),
  );

  // Setup env config
  flavorConfig = await setupFlavorConfig();

  // Setup dependencies
  await configureDependencies();

  runApp(const NoteApp());
}

Future<AppFlavor> setupFlavorConfig() async {
  // TODO: Change when publishing to production
  const defaultEnv = "dev";
  const flavor = defaultEnv;
  //final flavor = await const MethodChannel('flavor').invokeMethod('getFlavor') ?? defaultEnv;

  switch (flavor) {
    case 'dev':
      return const AppFlavor.dev();
    case 'stg':
      return const AppFlavor.stg();
    case 'prod':
      return const AppFlavor.prod();
    default:
      throw Exception('Unknown flavor: $flavor');
  }
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => AppLocale.of(context).appTitle,
      localizationsDelegates: AppLocale.localizationsDelegates,
      supportedLocales: AppLocale.supportedLocales,
      theme: AppTheme.simpleTheme,
      home: Container(
        color: Colors.blue,
      ),
    );
  }
}
