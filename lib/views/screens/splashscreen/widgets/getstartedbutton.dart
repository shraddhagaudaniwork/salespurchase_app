import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/routes/route_name.dart';
import 'package:salespurchase_app/utills/app_colors.dart';
import 'package:salespurchase_app/utills/static_decoration.dart';
import 'package:salespurchase_app/widgets/custom_containerwidget.dart';
import 'package:salespurchase_app/widgets/custom_textwidget.dart';

class GetStartedContainer extends StatelessWidget {
  const GetStartedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Get.toNamed(RoutesName.introscreen1);
        Get.toNamed(
          RoutesName.onboarding,
        );
      },
      child: CustomContainerWidget(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        padding: SizeConfig().getPadding(
          all: 16,
        ),
        color: AppColors.white,
        borderRadius: circular10BorderRadius,
        child: ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (rect) => const LinearGradient(
            colors: [
              AppColors.bluegradient,
              AppColors.bluecolor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(rect),
          child: CustomTextWidget(
            text: "Get Started",
            color: AppColors.bluegradient,
            fontSize: 16,
            fontWeight: fontWeight500,
          ),
        ),
      ),
    );
  }
}
