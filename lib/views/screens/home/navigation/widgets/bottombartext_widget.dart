import 'package:flutter/material.dart';
import '../../../../../utills/app_colors.dart';
import '../../../../../utills/static_decoration.dart';

class BottombartextWidget extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final double? fontSize;
  final Color? color;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;

  const BottombartextWidget({
    super.key,
    required this.text,
    this.fontFamily,
    this.fontSize,
    this.color,
    this.fontStyle,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize ?? 10,
        color: AppColors.bluecolor,
        fontWeight: fontWeight500,
        fontStyle: fontStyle,
      ),
    );
  }
}
