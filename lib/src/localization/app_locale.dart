import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppLocale {
  static final _rtlLanguageCodes = ['ar', 'fa', 'he', 'ps', 'ur'];

  static List<Locale> supportedLocales = const [
    Locale.fromSubtags(languageCode: 'en'),
    Locale.fromSubtags(languageCode: 'es'),
  ];

  static List<LocalizationsDelegate<dynamic>> localizationsDelegates = const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static AppLocalizations of(context) => AppLocalizations.of(context)!;

  static bool isRtl(context) {
    return _rtlLanguageCodes.contains(
      Localizations.localeOf(context).languageCode.toLowerCase(),
    );
  }
}
