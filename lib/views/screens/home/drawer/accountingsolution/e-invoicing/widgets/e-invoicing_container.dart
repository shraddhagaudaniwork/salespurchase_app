import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salespurchase_app/commoncomponent/commontext/commontext.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/utills/static_decoration.dart';
import 'package:salespurchase_app/widgets/custom_containerwidget.dart';
import '../../../../../../../utills/app_assets.dart';
import '../../../../../../../utills/app_colors.dart';

class EInvoicingPageContainer extends StatelessWidget {
  const EInvoicingPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: SizeConfig().getPadding(all: 16),
      child: Column(
        children: [
          //e-invoicing container:
          Padding(
            padding: SizeConfig().getPadding(bottom: 10),
            child: CustomContainerWidget(
              // padding: SizeConfig().getPadding(all: 100),
              color: AppColors.white,
              borderRadius: circular10BorderRadius,
              child: Column(
                children: [
                  Padding(
                      padding: SizeConfig().getPadding(
                        top: 20,
                        left: 20,
                        right: 20,
                        bottom: 10,
                      ),
                      child: SvgPicture.asset(
                        AppAsset.bill,
                        fit: BoxFit.cover,
                      )),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: CommonBlackTextWidget(
                      text: "Automatic e-invoice generation",
                      fontWeight: fontWeightbold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //e-way bill generation:
          Padding(
            padding: SizeConfig().getPadding(bottom: 10),
            child: CustomContainerWidget(
              // padding: SizeConfig().getPadding(all: 100),
              color: AppColors.white,
              borderRadius: circular10BorderRadius,
              child: Column(
                children: [
                  Padding(
                    padding: SizeConfig().getPadding(
                      top: 20,
                      left: 20,
                      right: 20,
                      bottom: 10,
                    ),
                    child: SvgPicture.asset(
                      AppAsset.truck,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: CommonBlackTextWidget(
                      text: "Hassle e-way bill generation using IRN",
                      fontWeight: fontWeightbold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          //GsTR1:
          Padding(
            padding: SizeConfig().getPadding(bottom: 10),
            child: CustomContainerWidget(
              // padding: SizeConfig().getPadding(all: 100),
              color: AppColors.white,
              borderRadius: circular10BorderRadius,
              child: Column(
                children: [
                  Padding(
                      padding: SizeConfig().getPadding(
                        top: 20,
                        left: 20,
                        right: 20,
                        bottom: 10,
                      ),
                      child: SvgPicture.asset(
                        AppAsset.gst,
                        fit: BoxFit.cover,
                      )),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: CommonBlackTextWidget(
                      text: "Easy GSTR-1 Reconciliation",
                      fontWeight: fontWeightbold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
