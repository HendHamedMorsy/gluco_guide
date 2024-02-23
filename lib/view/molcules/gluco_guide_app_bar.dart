import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/services/extensions.dart';

class GlucoGuideAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlucoGuideAppBar(
      {this.visible = true,
      super.key,
      this.text,
      this.titleWidget,
      this.enableShape = true,
      this.elevation = 3,
      this.height,
      this.leading,
      this.actions,
      this.backgroundColor,
      this.center = true,
      this.enablePadding = true});
  final String? text;
  final Widget? titleWidget;
  final bool? enableShape;
  final double? elevation;
  final double? height;
  final Widget? leading;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final bool center;
  final bool enablePadding;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: AppBar(
        centerTitle: center,
        backgroundColor:
            backgroundColor ?? context.theme.appBarTheme.backgroundColor,
        shadowColor: context.theme.appBarTheme.shadowColor,
        elevation: context.theme.appBarTheme.elevation,
        iconTheme: context.theme.appBarTheme.iconTheme,
        actions: actions,
        toolbarHeight: height,
        leading: leading,
        title: Padding(
          padding:
              enablePadding ? EdgeInsets.only(top: 20.0.h) : EdgeInsets.zero,
          child: titleWidget ??
              Text(text ?? "", style: context.theme.appBarTheme.titleTextStyle),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
