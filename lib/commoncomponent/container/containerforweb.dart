import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../responsive/sizeconfig.dart';
import '../../utills/app_assets.dart';
import '../../utills/app_colors.dart';
import '../../utills/static_decoration.dart';
import '../../widgets/custom_containerwidget.dart';
import '../../widgets/custom_textwidget.dart';

class ContainerBlueforweb extends StatelessWidget {
  final String percentage;
  final String title;

  const ContainerBlueforweb(
      {super.key, required this.percentage, required this.title});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      padding: SizeConfig().getPadding(all: 16),
      alignment: Alignment.centerLeft,
      // height: 120,
      // width: 250,
      borderRadius: circular10BorderRadius,
      color: AppColors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainerWidget(
                // height: 50,
                // width: 50,
                padding: SizeConfig().getPadding(
                  all: 16,
                ),
                borderRadius: circular10BorderRadius,
                color: AppColors.bluecolor,
                child: SvgPicture.asset(
                  AppAsset.arrow,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        SizeConfig().getPadding(left: 10, right: 10, top: 7),
                    child: CustomTextWidget(
                      text: percentage,
                      fontWeight: fontWeightbold,
                      fontSize: 22,
                      color: AppColors.bluecolor,
                    ),
                  ),
                  Padding(
                    padding:
                        SizeConfig().getPadding(left: 10, right: 10, top: 5),
                    child: CustomTextWidget(
                      text: title,
                      fontWeight: fontWeightbold,
                      fontSize: 13,
                      color: AppColors.blackcolor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerGreenforweb extends StatelessWidget {
  final String percentage;
  final String title;

  const ContainerGreenforweb(
      {super.key, required this.percentage, required this.title});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      padding: SizeConfig().getPadding(all: 16),
      alignment: Alignment.centerLeft,
      // height: 120,
      // width: 250,
      borderRadius: circular10BorderRadius,
      color: AppColors.white,
      child: Column(
        children: [
          Row(
            children: [
              CustomContainerWidget(
                // height: 50,
                // width: 50,
                padding: SizeConfig().getPadding(
                  all: 16,
                ),
                borderRadius: circular10BorderRadius,
                color: AppColors.greencolor,
                child: SvgPicture.asset(
                  AppAsset.arrow,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: SizeConfig().getPadding(
                      left: 10,
                      right: 10,
                      top: 7,
                    ),
                    child: CustomTextWidget(
                      text: percentage,
                      fontWeight: fontWeightbold,
                      fontSize: 22,
                      color: AppColors.greencolor,
                    ),
                  ),
                  Padding(
                    padding: SizeConfig().getPadding(
                      left: 10,
                      right: 10,
                      top: 5,
                    ),
                    child: CustomTextWidget(
                      text: title,
                      fontWeight: fontWeightbold,
                      fontSize: 13,
                      color: AppColors.blackcolor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ContainerRedforweb extends StatelessWidget {
  final String percentage;
  final String title;

  const ContainerRedforweb(
      {super.key, required this.percentage, required this.title});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      padding: SizeConfig().getPadding(all: 16),
      alignment: Alignment.centerLeft,
      // height: 120,
      // width: 250,
      borderRadius: circular10BorderRadius,
      color: AppColors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainerWidget(
                padding: SizeConfig().getPadding(
                  all: 16,
                ),
                borderRadius: circular10BorderRadius,
                color: AppColors.redcolor,
                child: SvgPicture.asset(
                  AppAsset.arrow,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        SizeConfig().getPadding(left: 10, right: 10, top: 7),
                    child: CustomTextWidget(
                      text: percentage,
                      fontWeight: fontWeightbold,
                      fontSize: 22,
                      color: AppColors.redcolor,
                    ),
                  ),
                  Padding(
                    padding:
                        SizeConfig().getPadding(left: 10, right: 10, top: 5),
                    child: CustomTextWidget(
                      text: title,
                      fontWeight: fontWeightbold,
                      fontSize: 13,
                      color: AppColors.blackcolor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
