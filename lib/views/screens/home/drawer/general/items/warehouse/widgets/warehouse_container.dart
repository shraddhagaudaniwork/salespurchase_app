import 'package:flutter/material.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';

import '../../../../../../../../commoncomponent/container/container.dart';
import '../../../../../../../../utills/app_colors.dart';
import '../../../../../../../../utills/static_decoration.dart';
import '../../../../../../../../widgets/custom_textwidget.dart';

class WareHousePageContainer extends StatelessWidget {
  const WareHousePageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlueContainerWidget(
          width: MediaQuery.of(context).size.width,
          padding: SizeConfig().getPadding(all: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: "20",
                color: AppColors.white,
                fontWeight: fontWeightbold,
                fontSize: 20,
              ),
              height05,
              CustomTextWidget(
                text: "Items Warehouse(30 days)",
                color: AppColors.white,
                // fontWeight: fontWeightbold,
              ),
            ],
          ),
        ),
        height10,
        // Row(
        //   children: [
        //     const Expanded(
        //       // child: Container(
        //       //   height: 130,
        //       //   color: Colors.blue,
        //       // ),
        //       child: GreenContainerWidget(
        //         percentage: "32%",
        //         text1: '11,75,598.92',
        //         text2: 'Stock Value',
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 12,
        //     ),
        //     Expanded(
        //       child: Container(
        //         height: 30,
        //         color: Colors.green,
        //       ),
        //     ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 20,
        // ),
        Row(
          children: [
            const Expanded(
              child: GreenContainerWidget(
                percentage: "32%",
                text1: '11,75,598.92',
                text2: 'Stock Value',
              ),
            ),
            width10,
            const Expanded(
              child: RedContainerWidget(
                percentage: "32%",
                text1: '5',
                text2: 'Low Stock',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
