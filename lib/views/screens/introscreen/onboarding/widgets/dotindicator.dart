import 'package:flutter/material.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';

import '../../../../../utills/app_colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    this.isActive = false,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: SizeConfig().getPadding(all: 16),
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 80 : 80,
      decoration: BoxDecoration(
        gradient: isActive
            ? const LinearGradient(
                colors: [
                  AppColors.bluegradient,
                  AppColors.bluecolor,
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
              )
            : LinearGradient(colors: [
                AppColors.grey400,
                AppColors.grey400,
              ]),
        // color: isActive ? AppColors.bluegradient : Colors.black,
        border: isActive
            ? null
            : Border.all(
                color: Colors.white,
              ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }
}
