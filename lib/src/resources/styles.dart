import 'package:flutter/material.dart';

import '_resources.dart';

class AppStyles {
  // Text Styles

  static const appBarTitleTextStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );

  static const defaultPrimaryTextStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const defaultSecondaryTextStyle = TextStyle(
    color: AppColors.secondaryTextColor,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const defaultTertiaryTextStyle = TextStyle(
    color: AppColors.tertiaryTextColor,
    fontWeight: FontWeight.normal,
    fontSize: 14,
  );

  static const infoTextStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static const noteListTextStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static const noteDetailsTextStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  static const noteAddEditTextStyle = TextStyle(
    color: AppColors.primaryTextColor,
    fontWeight: FontWeight.normal,
    fontSize: 24,
  );

  static const noteAddEditHintTextStyle = TextStyle(
    color: AppColors.secondaryTextColor,
    fontWeight: FontWeight.normal,
    fontSize: 24,
  );

  // Button Styles

  static ButtonStyle defaultButtonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    backgroundColor: AppColors.buttonColor,
  );
}
