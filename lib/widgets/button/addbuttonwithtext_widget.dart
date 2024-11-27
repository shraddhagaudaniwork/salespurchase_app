import 'package:flutter/material.dart';
import 'package:salespurchase_app/widgets/custom_textwidget.dart';

import '../../responsive/sizeconfig.dart';
import '../../utills/app_assets.dart';
import '../../utills/app_colors.dart';
import '../../utills/static_decoration.dart';

class AddbuttonwithtextWidget extends StatelessWidget {
  final void Function()? onTap;
  final String text;

  const AddbuttonwithtextWidget({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.black12,
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
        child: Row(
          children: [
            Padding(
              padding: SizeConfig().getPadding(all: 8),
              child: Image.asset(
                AppAsset.addsmall,
              ),
            ),
            Padding(
              padding: SizeConfig().getPadding(all: 8),
              child: CustomTextWidget(
                text: text,
                fontSize: 12,
                color: AppColors.white,
                fontWeight: fontWeight400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
