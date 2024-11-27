import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../responsive/sizeconfig.dart';
import '../../utills/app_assets.dart';
import '../../utills/app_colors.dart';
import '../../utills/static_decoration.dart';
import '../../widgets/custom_containerwidget.dart';
import '../../widgets/custom_textwidget.dart';

class BlueContainerWidget extends StatelessWidget {
  const BlueContainerWidget({
    super.key,
    this.border,
    this.borderRadius,
    this.color,
    this.alignment,
    this.child,
    this.width,
    this.gradient,
    this.boxShadow,
    this.image,
    this.height,
    this.padding,
  });

  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final AlignmentGeometry? alignment;
  final Widget? child;
  final double? height;
  final double? width;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;
  final DecorationImage? image;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? padding8,
      height: height,
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        image: image,
        gradient: const LinearGradient(
          colors: [
            AppColors.bluegradient,
            AppColors.bluedarkgradient,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
        border: border,
        borderRadius: circular15BorderRadius,
      ),
      child: child,
    );
  }
}

class GreenContainerWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String percentage;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final AlignmentGeometry? alignment;
  final Widget? child;
  final double? height;
  final double? width;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;
  final DecorationImage? image;
  final EdgeInsetsGeometry? padding;

  const GreenContainerWidget({
    super.key,
    this.border,
    this.borderRadius,
    this.color,
    this.alignment,
    this.child,
    this.width,
    this.gradient,
    this.boxShadow,
    this.image,
    this.height,
    this.padding,
    required this.text1,
    required this.text2,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? padding8,
      height: height,
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        image: image,
        gradient: const LinearGradient(
          colors: [
            AppColors.greengradient,
            AppColors.greendarkgradient,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
        border: border,
        borderRadius: circular15BorderRadius,
        color: AppColors.greencolor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // height05,
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainerWidget(
                  padding: SizeConfig().getPadding(all: 2),
                  child: SvgPicture.asset(
                    AppAsset.arrow,
                    fit: BoxFit.cover,
                  ),
                  // child: Image.asset(
                  //   AppAsset.arrow,
                  //   fit: BoxFit.cover,
                  // ),
                ),
                Expanded(
                  child: Padding(
                    padding: SizeConfig().getPadding(left: 40),
                    child: CustomTextWidget(
                      text: percentage,
                      fontWeight: fontWeightbold,
                      // fontSize: 22.sp,
                      fontSize: 20,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
            height10,
            //inner white container:
            CustomContainerWidget(
              padding: const EdgeInsets.all(8),
              // height: 65.h,
              // width: 135.w,
              width: MediaQuery.of(context).size.width,
              color: AppColors.white,
              borderRadius: BorderRadius.circular(
                10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomTextWidget(
                    text: text1,
                    fontWeight: fontWeightbold,
                    // fontSize: 15.sp,
                    fontSize: 14,
                    color: AppColors.greencolor,
                  ),
                  height05,
                  CustomTextWidget(
                    text: text2,
                    // fontSize: 10.sp,
                    fontSize: 13,
                    color: AppColors.blackcolor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RedContainerWidget extends StatelessWidget {
  const RedContainerWidget({
    super.key,
    this.border,
    this.borderRadius,
    this.color,
    this.alignment,
    this.child,
    this.width,
    this.gradient,
    this.boxShadow,
    this.image,
    this.height,
    this.padding,
    required this.text1,
    required this.text2,
    required this.percentage,
  });

  final String text1;
  final String text2;
  final String percentage;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final AlignmentGeometry? alignment;
  final Widget? child;
  final double? height;
  final double? width;
  final Gradient? gradient;
  final List<BoxShadow>? boxShadow;
  final DecorationImage? image;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? padding8,
      height: height,
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        image: image,
        gradient: const LinearGradient(
          colors: [
            AppColors.redgradient,
            AppColors.reddarkgradient,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomLeft,
        ),
        border: border,
        borderRadius: circular15BorderRadius,
        color: AppColors.redcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            // height05,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomContainerWidget(
                  padding: SizeConfig().getPadding(all: 2),
                  // child: Image.asset(
                  //   AppAsset.arrow,
                  //   fit: BoxFit.cover,
                  // ),
                  child: SvgPicture.asset(
                    AppAsset.arrow,
                    fit: BoxFit.cover,
                  ),
                ),
                // customWidth(70),
                Expanded(
                  child: Padding(
                    padding: SizeConfig().getPadding(
                      left: 40,
                    ),
                    child: CustomTextWidget(
                      text: percentage,
                      fontWeight: FontWeight.bold,
                      // fontSize: 22.sp,
                      fontSize: 20,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
            height10,
            CustomContainerWidget(
              padding: const EdgeInsets.all(8),
              // height: 65.h,
              width: MediaQuery.of(context).size.width,
              color: AppColors.white,
              borderRadius: BorderRadius.circular(
                10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomTextWidget(
                    text: text1,
                    fontWeight: FontWeight.bold,
                    // fontSize: 15.sp,
                    fontSize: 14,
                    color: AppColors.redcolor,
                  ),
                  height05,
                  CustomTextWidget(
                    text: text2,
                    // fontSize: 10.sp,
                    fontSize: 13,
                    color: AppColors.blackcolor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
