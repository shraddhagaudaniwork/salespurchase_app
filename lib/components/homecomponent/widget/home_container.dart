import 'package:flutter/material.dart';
import '../../../commoncomponent/commontext/commontext.dart';
import '../../../commoncomponent/container/container.dart';
import '../../../utills/app_assets.dart';
import '../../../utills/app_colors.dart';
import '../../../utills/static_decoration.dart';
import '../../../widgets/custom_containerwidget.dart';
import '../../../widgets/custom_textwidget.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        //blue container:
        Row(
          children: [
            Expanded(
              child: BlueContainerWidget(
                padding: padding16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      text: "₹40,41,490.92",
                      color: AppColors.white,
                      fontWeight: fontWeightbold,
                      fontSize: 20,
                    ),
                    height10,
                    CustomTextWidget(
                      text: "Total Available Balance",
                      color: AppColors.white,
                      fontWeight: fontWeight400,
                      fontSize: 13,
                    ),
                  ],
                ),
              ),
            ),
            // CustomContainerWidget(
            //   padding: const EdgeInsets.all(8),
            //   // height: 100.h,
            //   // width: 200.w,
            //   borderRadius: BorderRadius.circular(
            //     15,
            //   ),
            //   color: AppColors.bluecolor,
            //   child: Padding(
            //     padding: padding16,
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       children: [
            //         CustomTextWidget(
            //           text: "₹40,41,490.92",
            //           fontWeight: FontWeight.bold,
            //           fontSize: 22.sp,
            //           color: AppColors.white,
            //         ),
            //         height10,
            //         CustomTextWidget(
            //           text: "Total Available Balance",
            //           fontSize: 12.sp,
            //           color: AppColors.white,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            width10,
            //white Container:
            CustomContainerWidget(
              padding: const EdgeInsets.all(8),
              // height: 100,
              // width: 50,
              borderRadius: BorderRadius.circular(
                15,
              ),
              color: AppColors.white,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.black12,
                  blurStyle: BlurStyle.normal,
                  blurRadius: 5,
                  spreadRadius: 3,
                ),
              ],
              child: Image.asset(
                AppAsset.chart,
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
        height10,
        //green Container:
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: GreenContainerWidget(
                padding: padding5,
                percentage: "32%",
                text1: '₹8,41,490.925',
                text2: 'Collect Today',
              ),
            ),
            // CustomContainerWidget(
            //   padding: const EdgeInsets.all(
            //     8,
            //   ),
            //   // height: 145.h,
            //   // width: 155.h,
            //   color: AppColors.greencolor,
            //   borderRadius: BorderRadius.circular(
            //     15,
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8),
            //     child: Column(
            //       children: [
            //         // height05,
            //         CustomTextWidget(
            //           text: "32%",
            //           fontWeight: FontWeight.bold,
            //           fontSize: 22.sp,
            //           color: AppColors.white,
            //         ),
            //         height10,
            //         CustomContainerWidget(
            //           padding: const EdgeInsets.all(8),
            //           // height: 65.h,
            //           // width: 135.w,
            //           color: AppColors.white,
            //           borderRadius: BorderRadius.circular(
            //             10,
            //           ),
            //           child: Padding(
            //             padding: const EdgeInsets.all(8),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               mainAxisSize: MainAxisSize.min,
            //               children: [
            //                 CustomTextWidget(
            //                   text: "₹8,41,490.925",
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 15.sp,
            //                   color: AppColors.greencolor,
            //                 ),
            //                 height05,
            //                 CustomTextWidget(
            //                   text: "Collect Today",
            //                   fontSize: 10.sp,
            //                   color: AppColors.black,
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            width10,
            //red Container:
            const Expanded(
              child: RedContainerWidget(
                percentage: "32%",
                text1: '₹8,41,490.925',
                text2: 'Pay Today',
              ),
            ),
          ],
        ),
        height15,
      ],
    );
  }
}
