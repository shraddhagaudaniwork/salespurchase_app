import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utills/app_colors.dart';

class CustomDrawerDarkGreyIconWidget extends StatelessWidget {
  const CustomDrawerDarkGreyIconWidget({
    super.key,
    required this.icon,
    this.fill,
    this.shadows,
    this.weight,
    this.textDirection,
    this.color,
    this.size,
  });

  final IconData? icon;
  final double? fill;
  final List<Shadow>? shadows;
  final double? weight;
  final TextDirection? textDirection;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      // size: size ?? 18.sp,
      size: size ?? 20,
      color: color ?? AppColors.darkgreycolor,
      fill: fill,
      weight: weight,
      textDirection: textDirection,
      shadows: shadows,
    );
  }
}
