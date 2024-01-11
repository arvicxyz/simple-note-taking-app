import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_note_taking_app/src/features/note/note.dart';

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
  const defaultEnv = 'dev';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<NoteBloc>()..add(const NoteEvent.getAll()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (context) => AppLocale.of(context).appTitle,
        localizationsDelegates: AppLocale.localizationsDelegates,
        supportedLocales: AppLocale.supportedLocales,
        theme: AppTheme.simpleTheme,
        routerConfig: AppRoute.routerConfig,
      ),
    );
  }
}
