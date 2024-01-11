import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../../localization/app_locale.dart';
import '../../../../resources/_resources.dart';

class AppWidgets {
  static const Widget loadingIndicator = SizedBox(
    height: 60,
    child: LoadingIndicator(
      indicatorType: Indicator.ballSpinFadeLoader,
      colors: [AppColors.primaryColor],
    ),
  );

  static SnackBar errorSnackBar(
    BuildContext context,
    String message, {
    String? title,
    ContentType? contentType,
  }) =>
      SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        clipBehavior: Clip.none,
        duration: const Duration(seconds: 10),
        content: AwesomeSnackbarContent(
          title: title ?? AppLocale.of(context).errorTitleOops,
          message: message,
          contentType: contentType ?? ContentType.failure,
        ),
      );
}
