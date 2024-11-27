import 'package:flutter/material.dart';

class CustomDrawerwidget extends StatelessWidget {
  final Color? backgroundColor;
  final double? elevation;
  final Widget? child;
  final Clip? clipBehavior;
  final Color? shadowColor;
  final String? semanticLabel;
  final ShapeBorder? shape;
  final Color? surfaceTintColor;

  const CustomDrawerwidget({
    super.key,
    this.backgroundColor,
    this.elevation,
    this.semanticLabel,
    this.clipBehavior,
    this.child,
    this.shadowColor,
    this.shape,
    this.surfaceTintColor,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: backgroundColor,
      elevation: elevation,
      clipBehavior: clipBehavior,
      shadowColor: shadowColor,
      semanticLabel: semanticLabel,
      shape: shape,
      surfaceTintColor: surfaceTintColor,
      child: child,
    );
  }
}
