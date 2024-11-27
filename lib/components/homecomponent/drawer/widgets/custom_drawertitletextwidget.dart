import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utills/app_colors.dart';
import '../../../../utills/static_decoration.dart';



//In Drawer listtile above title text:
class CustomDrawerTitleWhiteTextWidget extends StatelessWidget {
  const CustomDrawerTitleWhiteTextWidget({
    super.key,
    required this.text,
    this.fontStyle,
    this.fontWeight,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.letterSpacing,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.overflow,
    this.textBaseline,
    this.wordSpacing,
  });

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

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 14,
        color: AppColors.wcolor,
        fontWeight: fontWeight600,
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


//In Drawer listtile title text:
class CustomDrawerListTileTitleWhiteTextWidget extends StatelessWidget {
  const CustomDrawerListTileTitleWhiteTextWidget({
    super.key,
    required this.text,
    this.fontStyle,
    this.fontWeight,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.letterSpacing,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.overflow,
    this.textBaseline,
    this.wordSpacing,
  });

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

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        // fontSize: 13.sp,
        fontSize: fontSize ?? 15,
        color: AppColors.wcolor,
        fontWeight: fontWeight500,
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