import 'package:flutter/material.dart';

import '_resources.dart';

class AppStyles {
  // Text Styles

  static const appBarTitleTextStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  static const defaultTextStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const defaultGrayTextStyle = TextStyle(
    color: AppColors.secondaryTextColor,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const defaultWhiteTextStyle = TextStyle(
    color: AppColors.tertiaryTextColor,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );
}
