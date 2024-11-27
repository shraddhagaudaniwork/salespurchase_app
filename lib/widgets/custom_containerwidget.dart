import 'package:flutter/material.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({
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
    // this.shape,
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
      padding: padding,
      height: height,
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
        boxShadow: boxShadow,
        image: image,
        gradient: gradient,
        border: border,
        borderRadius: borderRadius,
        color: color,
      ),
      child: child,
    );
  }
}
