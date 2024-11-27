import 'package:flutter/material.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/utills/app_assets.dart';
import 'package:salespurchase_app/utills/app_colors.dart';
import 'package:salespurchase_app/utills/static_decoration.dart';

class AddbuttonWidget extends StatelessWidget {
  final void Function()? onTap;

  const AddbuttonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: circular8BorderRadius,
          color: AppColors.bluecolor,
        ),
        // height: 60,
        // width: 50,
        padding: SizeConfig().getPadding(
          all: 8,
        ),
        child: Image.asset(
          AppAsset.add,
        ),
      ),
    );
  }
}
