import 'package:flutter/material.dart';
import '../../utills/app_colors.dart';
import '../../utills/static_decoration.dart';

// latest transaction text:
class CommonDarkGreyTextTitleWidget extends StatelessWidget {
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

  const CommonDarkGreyTextTitleWidget({
    super.key,
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
    this.textBaseline,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        // fontSize: 12.sp,
        fontSize: 14,
        color: AppColors.darkgreycolor,
        fontWeight: fontWeightbold,
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

class CommonBlackTextTitleWidget extends StatelessWidget {
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

  const CommonBlackTextTitleWidget({
    super.key,
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
    this.textBaseline,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize ?? 15,
        color: AppColors.darkgreycolor,
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

class CommonBlueTextWidget extends StatelessWidget {
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

  const CommonBlueTextWidget({
    super.key,
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
    this.textBaseline,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize ?? 15,
        color: AppColors.bluecolor,
        fontWeight: fontWeight ?? fontWeight400,
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

class CommonBlackTextWidget extends StatelessWidget {
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
  final List<Shadow>? shadows;

  const CommonBlackTextWidget({
    super.key,
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
    this.textBaseline,
    this.shadows,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        shadows: shadows,
        fontFamily: 'Roboto',
        // fontSize: 10.sp,
        fontSize: fontSize ?? 13,
        color: color ?? AppColors.blackcolor,
        fontWeight: fontWeight ?? fontWeight400,
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
