import 'package:flutter/material.dart';

import 'package:salespurchase_app/responsive/responsive.dart';

import '../../main.dart';

import '../responsive/sizeconfig.dart';

import '../utills/app_colors.dart';

InputDecoration inputFieldWithLabel(
    {required String hintText,
    String? labelText,
    String? helperText,
    required Color fillColor,
    required Color borderColor,
    required String? suffixIcon,
    Widget? suffixIconWidget,
    required String? prefixIcon,
    Widget? prefixWidget,
    TextStyle? hintStyle,
    TextStyle? labelStyle,
    Color? focusedBorder,
    void Function()? suffixIconOnTap,
    void Function()? prefixIconOnTap,
    EdgeInsetsGeometry? contentPadding,
    EdgeInsetsGeometry? prefixIconPadding,
    EdgeInsetsGeometry? sufixIconPadding,
    Color? suffixIconColor,
    Color? prefixIconColor,
    required double borderRadius,
    BorderRadius? allBorderRadius}) {
  return InputDecoration(
    errorStyle: TextStyle(fontSize: SizeConfig().getFontSize(12)),
    helperText: helperText,
    hintStyle: hintStyle ??
        const TextStyle(
          overflow: TextOverflow.visible,
          fontSize: 14,
          color: AppColors.greencolor,
          height: 1.5,
          fontWeight: FontWeight.w500,
        ),
    hintText: hintText,
    labelStyle: labelStyle ??
        TextStyle(
          overflow: TextOverflow.visible,
          fontSize: SizeConfig().getFontSize(12),
          color: AppColors.primaryColor.withOpacity(
            0.8,
          ),
          fontWeight: FontWeight.w500,
        ),
    labelText: labelText,
    filled: true,
    alignLabelWithHint: true,
    fillColor: fillColor,
    contentPadding: contentPadding ??
        (ResponsiveLayoutClass.isDesktop(mainKey.currentContext!)
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
    border: OutlineInputBorder(
        borderRadius: allBorderRadius ??
            BorderRadius.circular(
              borderRadius,
            ),
        borderSide: BorderSide(color: borderColor)),
    focusedBorder: OutlineInputBorder(
      borderRadius: allBorderRadius ??
          BorderRadius.circular(
            borderRadius,
          ),
      borderSide: BorderSide(
        color: focusedBorder ?? AppColors.grey,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: allBorderRadius ??
          BorderRadius.circular(
            borderRadius,
          ),
      borderSide: BorderSide(color: borderColor),
    ),
    // errorBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(borderRadius),
    //     borderSide: BorderSide(color: borderColor)),
    prefixIcon: prefixWidget ??
        (prefixIcon != null
            ? Padding(
                padding: SizeConfig().getPadding(left: 15, right: 15),
                child: InkWell(
                  onTap: prefixIconOnTap,
                  child: Container(
                    alignment: Alignment.center,
                    width: SizeConfig().getHorizontalSize(20),
                    height: SizeConfig().getVerticalSize(20),
                    child: Image.asset(
                      prefixIcon,
                      colorBlendMode: BlendMode.srcIn,
                    ),
                    // child: SvgPicture.asset(
                    //   prefixIcon,
                    //   colorFilter: ColorFilter.mode(
                    //       prefixIconColor ?? AppColors.white,
                    //       BlendMode.srcIn),
                    // ),
                  ),
                ),
              )
            : null),
    suffixIcon: suffixIconWidget ??
        (suffixIcon != null
            ? InkWell(
                onTap: suffixIconOnTap,
                child: Padding(
                  padding: sufixIconPadding ?? SizeConfig().getPadding(all: 16),
                  child: SizedBox(
                    width: SizeConfig().getHorizontalSize(20),
                    height: SizeConfig().getVerticalSize(20),
                    child: Image.asset(
                      suffixIcon,
                      colorBlendMode: BlendMode.srcIn,
                    ),
                    // child: SvgPicture.asset(suffixIcon,
                    //     colorFilter: ColorFilter.mode(
                    //         suffixIconColor ?? AppColors.primaryColor,
                    //         BlendMode.srcIn),
                    //     width: SizeConfig().getHorizontalSize(20)),
                  ),
                ),
              )
            : null),
  );
}
