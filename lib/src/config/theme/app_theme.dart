import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../resources/_resources.dart';

class AppTheme {
  static ThemeData simpleTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
    ),
    useMaterial3: false,
    fontFamily: _getFontFamily(),
    appBarTheme: _getAppBarTheme(),
    textTheme: _getTextTheme(const TextTheme()),
  );

  static String? _getFontFamily() => AppFonts.manrope;

  static AppBarTheme _getAppBarTheme() {
    return const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    );
  }

  static TextTheme _getTextTheme(TextTheme theme) {
    var style = TextStyle(
      fontFamily: _getFontFamily(),
      fontFeatures: const [FontFeature.proportionalFigures()],
    );
    return theme.merge(
      TextTheme(
        displayLarge: style,
        displayMedium: style,
        displaySmall: style,
        headlineLarge: style,
        headlineMedium: style,
        headlineSmall: style,
        titleLarge: style,
        titleMedium: style,
        titleSmall: style,
        bodyLarge: style,
        bodyMedium: style,
        bodySmall: style,
        labelLarge: style,
        labelMedium: style,
        labelSmall: style,
      ),
    );
  }
}
