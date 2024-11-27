import 'package:flutter/material.dart';
import 'package:salespurchase_app/widgets/custom_containerwidget.dart';

class CustomListTileWidget extends StatelessWidget {
  final Widget? title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final ListTileStyle? style;
  final void Function()? onTap;
  final bool isThreeLine;

  final Color? tileColor;
  final ShapeBorder? shape;
  final VisualDensity? visualDensity;
  final bool selected ;
  final Color? selectedColor;
  final Color? selectedTileColor;
  final Color? iconColor;
  final Color? textColor;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final Color? splashColor;
  final void Function()? onLongPress;
  final Color? hoverColor;
  final Color? focusColor;
  final double? minLeadingWidth;
  final double? minTileHeight;
  final bool enabled = true;
  final ListTileTitleAlignment? titleAlignment;
  final void Function(bool)? onFocusChange;
  final bool? dense ;

  const CustomListTileWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.onTap,
    this.style,
    this.isThreeLine = false,
    this.tileColor,
    this.shape,
    this.visualDensity,
    this.focusColor,
    this.hoverColor,
    this.iconColor,
    this.minLeadingWidth,
    this.minTileHeight,
    this.onLongPress,
    this.selectedColor,
    this.selectedTileColor,
    this.splashColor,
    this.subtitleTextStyle,
    this.textColor,
    this.titleTextStyle,
    this.titleAlignment,
    this.onFocusChange,
    this.selected = false, this.dense,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      // color: Colors.black26,
      child: ListTile(
        dense: dense,
        title: title,
        trailing: trailing,
        leading: leading,
        subtitle: subtitle,
        style: style,
        onTap: onTap,
        isThreeLine: isThreeLine,
        tileColor: tileColor,
        shape: shape,
        visualDensity: visualDensity,
        selected: selected,
        selectedColor: selectedColor,
        selectedTileColor: selectedTileColor,
        iconColor: iconColor,
        textColor: textColor,
        titleTextStyle: titleTextStyle,
        titleAlignment: titleAlignment,
        subtitleTextStyle: subtitleTextStyle,
        splashColor: splashColor,
        onLongPress: onLongPress,
        hoverColor: hoverColor,
        focusColor: focusColor,
        minLeadingWidth: minLeadingWidth,
        minTileHeight: minTileHeight,
        enabled: enabled,
        onFocusChange: onFocusChange,
      ),
    );
  }
}