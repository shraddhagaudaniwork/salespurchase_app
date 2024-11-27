import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../../../../../../../utills/app_colors.dart';
import '../../../../../../../utills/static_decoration.dart';
import '../../../../../../../widgets/custom_textwidget.dart';

class StaffAttendencePageCommonContainerWidget extends StatelessWidget {
  final String text;

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

  const StaffAttendencePageCommonContainerWidget({
    super.key,
    required this.text,
    required this.percentage,
    this.border,
    this.borderRadius,
    this.color,
    this.alignment,
    this.child,
    this.height,
    this.width,
    this.gradient,
    this.boxShadow,
    this.image,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: circular15BorderRadius,
      ),
      child: Padding(
        padding: padding8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextWidget(
              text: percentage,
              fontWeight: fontWeightbold,
              fontSize: 20,
              color: AppColors.white,
            ),
            height10,
            CustomTextWidget(
              text: text,
              fontWeight: fontWeight400,
              color: AppColors.white,
              fontSize: 13,
            ),
          ],
        ),
      ),
    );
  }
}
