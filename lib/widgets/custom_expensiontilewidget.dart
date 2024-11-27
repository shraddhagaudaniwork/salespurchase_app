
import 'package:flutter/material.dart';
import 'package:salespurchase_app/widgets/custom_containerwidget.dart';

class CustomExpensiontile_widget extends StatelessWidget {
  const CustomExpensiontile_widget({
    super.key,
    required this.title,
    this.trailing,
    this.leading,
    this.onExpansionChanged,
    required this.children,
    this.iconColor,
    this.backgroundColor,
    this.shape,
    this.tilePadding,
    this.textColor,
    this.initiallyExpanded = false,
    this.subtitle,
  });

  final Widget title;
  final Widget? trailing;
  final Widget? leading;
  final void Function(bool)? onExpansionChanged;
  final List<Widget> children;
  final Color? iconColor;
  final Color? backgroundColor;
  final ShapeBorder? shape;
  final EdgeInsetsGeometry? tilePadding;
  final Color? textColor;
  final bool initiallyExpanded;
  final Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      // color: Colors.black26,
      child: ExpansionTile(

        title: title,
        trailing: trailing,
        leading: leading,
        onExpansionChanged: onExpansionChanged,
        iconColor: iconColor,
        backgroundColor: backgroundColor,
        shape: shape,
        tilePadding: tilePadding,
        textColor: textColor,
        initiallyExpanded: initiallyExpanded,
        subtitle: subtitle,
        children: children,
      ),
    );
  }
}
