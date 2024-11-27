import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/routes/route_name.dart';
import 'package:salespurchase_app/widgets/custom_containerwidget.dart';

import '../../../../../responsive/sizeconfig.dart';
import '../../../../../utills/app_colors.dart';
import '../../../../../utills/static_decoration.dart';
import '../../../../../widgets/custom_textwidget.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final String assetName;

  const WhiteButton({
    super.key,
    required this.text,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      padding: SizeConfig().getPadding(
        all: 16,
      ),
      color: AppColors.white,
      borderRadius: circular10BorderRadius,
      child: Row(
        children: [
          Image.asset(assetName,fit: BoxFit.cover,),
          // SvgPicture.asset(
          //   assetName,
          //   fit: BoxFit.cover,
          //   height: 2,
          //   width: 2,
          // ),
          Padding(
            padding: SizeConfig().getPadding(right: 16,left: 16,top:2,bottom: 2),
            child: CustomTextWidget(
              text: text,
              color: AppColors.lightgreycolor,
              fontSize: 14,
              // fontWeight: fontWeight500,
            ),
          ),
        ],
      ),
    );
  }
}
