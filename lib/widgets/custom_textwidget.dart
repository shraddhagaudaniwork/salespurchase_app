import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class Texttheme {
//   static TextStyle intertextstyleblack = const TextStyle(
//     color: Colors.black,
//     // fontWeight: FontWeight.bold,
//     fontSize: 40,
//     fontFamily: 'Julius Sans One',
//     // decoration: TextDecoration.none,
//   );
//
//   static TextStyle textStylewhite = const TextStyle(
//     color: Colors.white,
//     fontWeight: FontWeight.bold,
//     fontSize: 18,
//     fontFamily: 'Inter',
//     // decoration: TextDecoration.none,
//   );
// }

Color? color;

class CustomFont {
  static TextStyle juliusSaNSonetextStyle = GoogleFonts.juliusSansOne(
    fontWeight: FontWeight.w600,
    fontSize: 45,
    letterSpacing: 1,
    color: Colors.black,
  );

  static TextStyle juliusSaNSonesmalltextStyle = GoogleFonts.juliusSansOne(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    // decoration: TextDecoration.underline,color: ,
    // letterSpacing: 1,
  );

  static TextStyle intertextstyle = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    // color: Colors.white,
  );

  static TextStyle intertextstyleblack = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: color,
  );

  static TextStyle intertextstyleblackbold = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.black,
  );

  static TextStyle intertextstylegrey = GoogleFonts.inter(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.grey,
  );

  static TextStyle intertextstylered = GoogleFonts.inter(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.red,
  );

  static TextStyle kokrotextstyle = GoogleFonts.kameron(
      fontWeight: FontWeight.w400, fontSize: 30, color: Colors.black);

  static TextStyle Pompiere = GoogleFonts.pompiere(
      fontWeight: FontWeight.w400, fontSize: 30, color: Colors.black);
}

//
//
// TextStyle textStyle = TextStyle(
//   fontWeight: fontWeight,
//   fontSize: fontSize,
//   color: color,
//   fontFamily: fontFamily,
//   fontStyle: fontStyle,
// );

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
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
    this.maxLines,
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
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
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
