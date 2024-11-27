import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/routes/route_name.dart';
import 'package:salespurchase_app/widgets/custom_containerwidget.dart';

import '../../../../../responsive/sizeconfig.dart';
import '../../../../../utills/app_colors.dart';
import '../../../../../utills/static_decoration.dart';
import '../../../../../widgets/custom_textwidget.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      gradient: const LinearGradient(
        colors: [
          AppColors.bluegradient,
          AppColors.bluecolor,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomLeft,
      ),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: SizeConfig().getPadding(all: 16),
      color: AppColors.white,
      borderRadius: circular10BorderRadius,
      child: CustomTextWidget(
        text: "Next",
        color: AppColors.wcolor,
        fontSize: 16,
        fontWeight: fontWeight500,
      ),
    );
  }
}
