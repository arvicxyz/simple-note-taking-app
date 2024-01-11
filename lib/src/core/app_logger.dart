import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

import '../config/_config.dart';

class AppLogger {
  static void logException(Exception? exception) {
    try {
      if (exception == null) return;
      final exceptionMessage = exception.toString();
      final logger = getIt<Logger>();
      logger.e(exceptionMessage);
      Isolate.run(() => _sendErrors());
    } on Exception catch (_) {
      rethrow;
    }
  }

  static void logError(Object? message) {
    try {
      if (message == null) return;
      final logger = getIt<Logger>();
      logger.e(message);
      Isolate.run(() => _sendErrors());
    } on Exception catch (_) {
      rethrow;
    }
  }

  static void logInfo(Object? message) {
    try {
      if (message == null) return;
      if (kDebugMode) {
        final logger = getIt<Logger>();
        logger.i(message);
      }
    } on Exception catch (_) {
      rethrow;
    }
  }

  static void _sendErrors() {
    // TODO: Send errors here
  }
}
