import 'package:flutter/material.dart';

class CustomListviewBuilderWidget extends StatelessWidget {
  final Widget? Function(BuildContext, int) itemBuilder;
  final int? itemCount;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;
  final Axis scrollDirection;

  const CustomListviewBuilderWidget({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.shrinkWrap = false,
    this.physics,
    this.padding,
    this.scrollDirection = Axis.vertical,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      shrinkWrap: shrinkWrap,
      physics: physics,
      padding: padding,
      scrollDirection: scrollDirection,
    );
  }
}


