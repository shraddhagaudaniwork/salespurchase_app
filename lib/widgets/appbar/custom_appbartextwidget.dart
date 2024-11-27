import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utills/app_colors.dart';

class CustomAppBarTextWidget extends StatelessWidget {
  final String text;
  final String? fontFamily;
  final double? fontSize;
  final Color? color;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final double? wordSpacing;
  final double? letterSpacing;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextDecorationStyle? decorationStyle;
  final TextOverflow? overflow;
  final TextBaseline? textBaseline;

  const CustomAppBarTextWidget(
      {super.key,
      required this.text,
      this.fontFamily,
      this.fontSize,
      this.color,
      this.fontStyle,
      this.fontWeight,
      this.wordSpacing,
      this.letterSpacing,
      this.decoration,
      this.decorationColor,
      this.decorationStyle,
      this.overflow,
      this.textBaseline});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: fontFamily,
        // fontSize: 15.sp,
        fontSize: 18,
        color: AppColors.appbartitlecolor,
        fontWeight: FontWeight.w600,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        overflow: overflow,
        textBaseline: textBaseline,
      ),
    );
  }
}
