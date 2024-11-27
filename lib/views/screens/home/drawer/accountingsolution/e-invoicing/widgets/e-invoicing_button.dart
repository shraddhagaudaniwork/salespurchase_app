import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/components/homecomponent/drawer/widgets/drawercomponent.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/routes/route_name.dart';
import 'package:salespurchase_app/utills/app_colors.dart';
import 'package:salespurchase_app/utills/static_decoration.dart';
import 'package:salespurchase_app/widgets/custom_containerwidget.dart';
import 'package:salespurchase_app/widgets/custom_textwidget.dart';

class EInvoicingButton extends StatelessWidget {
  const EInvoicingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(RoutesName.homecomponent);
      },
      child: CustomContainerWidget(
        color: AppColors.bluecolor,
        borderRadius: circular10BorderRadius,
        padding: SizeConfig().getPadding(all: 16),
        child:  CustomTextWidget(
          text: "Start Generating e-invoices",
          fontWeight: fontWeight500,
          fontSize: 13,
          color: Colors.white,
        ),
      ),
    );
  }
}
