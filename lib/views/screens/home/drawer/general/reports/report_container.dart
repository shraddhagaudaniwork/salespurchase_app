import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/responsive/responsive.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/reports/reports_controller.dart';

import '../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../responsive/sizeconfig.dart';
import '../../../../../../utills/app_colors.dart';
import '../../../../../../utills/static_decoration.dart';
import '../../../../../../widgets/custom_containerwidget.dart';
import '../../../../../../widgets/custom_textwidget.dart';

class ReportPageContainer extends StatelessWidget {
  const ReportPageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    ReportsController reportsController = Get.put(ReportsController());
    return (ResponsiveLayoutClass.isMobile(context))
        ? Obx(() {
            return Padding(
              padding: SizeConfig().getPadding(all: 16),
              child: Column(
                children: [
                  CustomContainerWidget(
                    // padding: SizeConfig().getPadding(all: 16),
                    color: AppColors.white,
                    borderRadius: circular10BorderRadius,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 5,
                            top: 16,
                          ),
                          child: CustomTextWidget(
                            text: "Favorite",
                            fontSize: 15,
                            fontWeight: fontWeightbold,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "No Report Found",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  height10,
                  //GST:
                  CustomContainerWidget(
                    // padding: SizeConfig().getPadding(all: 16),
                    color: AppColors.white,
                    borderRadius: circular10BorderRadius,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 5,
                            top: 16,
                          ),
                          child: CustomTextWidget(
                            maxLines:
                                reportsController.isreadmore.value ? 12 : 2,
                            text: "GST",
                            fontSize: 15,
                            fontWeight: fontWeightbold,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "Balance Sheet",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR-1(Sales)",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR-1(Purchase)",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR3b",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            all: 16,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const CommonBlueTextWidget(
                              text: "See Less ^",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  height10,
                  CustomContainerWidget(
                    // padding: SizeConfig().getPadding(all: 16),
                    color: AppColors.white,
                    borderRadius: circular10BorderRadius,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 5,
                            top: 16,
                          ),
                          child: CustomTextWidget(
                            text: "Transactions",
                            fontSize: 15,
                            fontWeight: fontWeightbold,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "Balance Sheet",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR-1(Sales)",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR-1(Purchase)",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR3b",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            all: 16,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const CommonBlueTextWidget(
                              text: "See Less ^",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          })
        : Padding(
            padding: SizeConfig().getPadding(all: 16),
            child: Row(
              children: [
                Padding(
                  padding: SizeConfig().getPadding(all: 8),
                  child: CustomContainerWidget(
                    // padding: SizeConfig().getPadding(all: 16),
                    color: AppColors.white,
                    borderRadius: circular10BorderRadius,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 120,
                            bottom: 5,
                            top: 16,
                          ),
                          child: CustomTextWidget(
                            text: "GST",
                            fontSize: 15,
                            fontWeight: fontWeightbold,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 120,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "Balance Sheet",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 120,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR-1(Sales)",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR-1(Purchase)",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR3b",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            all: 16,
                          ),
                          child: InkWell(
                            onTap: () {
                              reportsController.changeLessorMore();
                            },
                            child: CommonBlueTextWidget(
                              text: reportsController.isreadmore.value
                                  ? "See Less ^"
                                  : "See More ^",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: SizeConfig().getPadding(all: 8),
                  child: CustomContainerWidget(
                    // padding: SizeConfig().getPadding(all: 16),
                    color: AppColors.white,
                    borderRadius: circular10BorderRadius,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 120,
                            bottom: 5,
                            top: 16,
                          ),
                          child: CustomTextWidget(
                            text: "GST",
                            fontSize: 15,
                            fontWeight: fontWeightbold,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 120,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "Balance Sheet",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 120,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR-1(Sales)",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR-1(Purchase)",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            left: 16,
                            right: 16,
                            bottom: 16,
                            top: 5,
                          ),
                          child: CustomTextWidget(
                            text: "GSTR3b",
                            fontSize: 12,
                            fontWeight: fontWeight400,
                            color: AppColors.blackcolor,
                          ),
                        ),
                        Padding(
                          padding: SizeConfig().getPadding(
                            all: 16,
                          ),
                          child: InkWell(
                            onTap: () {},
                            child: const CommonBlueTextWidget(
                              text: "See Less ^",
                              fontWeight: FontWeight.bold,
                            ),
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
