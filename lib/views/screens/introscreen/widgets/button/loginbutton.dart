import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../responsive/sizeconfig.dart';
import '../../../../../routes/route_name.dart';
import '../../../../../utills/app_colors.dart';
import '../../../../../utills/static_decoration.dart';
import '../../../../../widgets/custom_containerwidget.dart';
import '../../../../../widgets/custom_textwidget.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          RoutesName.loginpage,
        );
      },
      child: CustomContainerWidget(
          border: Border.all(color: AppColors.bluegradient),
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
              text: "Login",
              color: AppColors.bluegradient,
              fontSize: 16,
              fontWeight: fontWeight500,
            ),
          ),
          // child: CustomTextWidget(
          //   text: "Login",
          //   color: AppColors.bluegradient,
          //   fontSize: 18,
          //   fontWeight: fontWeight500,
          // ),
          ),
    );
  }
}
