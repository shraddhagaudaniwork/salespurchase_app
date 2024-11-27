import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:salespurchase_app/responsive/responsive.dart';
import 'package:salespurchase_app/utills/app_assets.dart';
import 'package:salespurchase_app/widgets/custom_containerwidget.dart';

import '../main.dart';
import '../responsive/sizeconfig.dart';
import '../utills/app_colors.dart';
import '../utills/static_decoration.dart';

class CustomTextFormField extends StatelessWidget {
  final bool autocorrect;
  final String? intialValue;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;
  final double? borderRadius;
  final bool? enabled;
  final Color? borderColor;
  final void Function(String)? onChanged;
  final bool enableSuggestions;
  final int maxLines;
  final bool? alignLabelWithHint;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final TextInputAction? textInputAction;
  final Widget? prefixIcon;
  final String? errorText;
  final void Function(String)? onFieldSubmitted;
  final Color? cursorColor;
  final double? cursorHeight;
  final EdgeInsetsGeometry? contentPadding;

  // final bool autofocus;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.labelText,
    this.hintText,
    this.textStyle,
    this.hintTextStyle,
    this.borderRadius,
    this.enabled = true,
    this.borderColor,
    this.onChanged,
    this.intialValue,
    this.obscureText = false,
    this.suffixIcon,
    this.validator,
    this.autocorrect = false,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.alignLabelWithHint,
    this.keyboardType,
    this.autofillHints,
    this.textInputAction,
    this.prefixIcon,
    this.errorText,
    this.onFieldSubmitted,
    this.cursorColor,
    this.cursorHeight,
    this.contentPadding,
    // this.autofocus = false,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      // padding: padding8,
      alignment: Alignment.center,
      // height: 40.h,
      // width: 100.w,
      color: AppColors.white,
      borderRadius: circular10BorderRadius,
      child: TextFormField(
        // autofocus: autofocus,
        cursorHeight: 20,
        cursorColor: cursorColor ?? AppColors.bluecolor,
        key: key,
        autofillHints: autofillHints,
        keyboardType: keyboardType,
        controller: controller,
        maxLines: maxLines,
        textInputAction: textInputAction,
        enableSuggestions: enableSuggestions,
        style: textStyle,
        autocorrect: autocorrect,
        initialValue: intialValue,
        onChanged: onChanged,
        obscureText: obscureText,
        validator: validator,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          contentPadding: contentPadding ??
              (ResponsiveLayoutClass.isDesktop(context)
                  ? SizeConfig().getPadding(
                      top: 20,
                      bottom: 20,
                      left: 30,
                      right: 30,
                    )
                  : SizeConfig().getPadding(
                      top: 15,
                      bottom: 15,
                      left: 18,
                      right: 18,
                    )),
          hintText: hintText,
          prefixIcon: prefixIcon ?? Image.asset(AppAsset.search),
          errorText: errorText,
          alignLabelWithHint: alignLabelWithHint,
          suffixIcon: suffixIcon,
          labelText: labelText,
          hintStyle: TextStyle(
            fontSize: 15,
            color: AppColors.lightgreycolor,
            fontWeight: fontWeight400,
          ),
          labelStyle: hintTextStyle,
          enabled: enabled ?? true,
          border: OutlineInputBorder(
            borderRadius: circular10BorderRadius,
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: circular10BorderRadius,
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: circular10BorderRadius,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.redcolor,
              width: 1.5,
            ),
            borderRadius: circular10BorderRadius,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class CustomPhoneNumTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final MouseCursor? mouseCursor;
  final String? hintText;
  final void Function(String)? onChanged;

  const CustomPhoneNumTextFormField(
      {super.key,
      required this.controller,
      this.keyboardType,
      required this.validator,
      this.mouseCursor,
      this.hintText,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
      ),
      validator: validator,
      mouseCursor: mouseCursor,
      onChanged: onChanged,
    );
  }
}

class CustomSearchTextFormField extends StatelessWidget {
  const CustomSearchTextFormField({
    super.key,
    this.border,
    this.hintText,
    this.labelText,
    this.mouseCursor,
    this.suffixIcon,
    this.onChanged,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.hintStyle,
    this.controller,
    this.keyboardType,
    this.cursorColor,
    this.cursorHeight,
  });

  final InputBorder? border;
  final String? hintText;
  final String? labelText;
  final MouseCursor? mouseCursor;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Color? cursorColor;
  final double? cursorHeight;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      keyboardType: keyboardType,
      cursorColor: cursorColor,
      cursorHeight: 3.00,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: border,
        hintText: hintText,
        labelText: labelText,
        hintStyle: hintStyle,
      ),
      mouseCursor: mouseCursor,
    );
  }
}
