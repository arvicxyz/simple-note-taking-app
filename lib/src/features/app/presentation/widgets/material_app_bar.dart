import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../../../../resources/_resources.dart';

class MaterialAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final Widget icon;
  final Color iconColor;
  final VoidCallback? iconOnPressed;
  final Color backgroundColor;
  final double elevation;
  final SystemUiOverlayStyle? overlayStyle;
  final List<Widget>? actions;

  const MaterialAppBar({
    super.key,
    this.title,
    this.leading,
    this.icon = const Icon(Icons.arrow_back_ios_new),
    this.iconColor = AppColors.buttonColor,
    this.iconOnPressed,
    this.backgroundColor = Colors.transparent,
    this.elevation = 0,
    this.overlayStyle,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final style = (Platform.isIOS)
        ? SystemUiOverlayStyle.light
        : const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
          );
    return AppBar(
      title: title,
      leading: leading ??
          IconButton(
            icon: icon,
            color: iconColor,
            onPressed: iconOnPressed ?? () => context.pop(context),
          ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      systemOverlayStyle: overlayStyle ?? style,
      actions: actions,
    );
  }
}
