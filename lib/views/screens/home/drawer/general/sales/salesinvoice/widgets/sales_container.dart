import 'package:flutter/material.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';

import '../../../../../../../../commoncomponent/container/container.dart';
import '../../../../../../../../utills/app_colors.dart';
import '../../../../../../../../utills/static_decoration.dart';
import '../../../../../../../../widgets/custom_textwidget.dart';

class SalesInvoicePageContainer extends StatelessWidget {
  const SalesInvoicePageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlueContainerWidget(
          width: MediaQuery.of(context).size.width,
          padding: SizeConfig().getPadding(
            all: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                text: "₹ 11,75,521.21",
                color: AppColors.white,
                fontWeight: fontWeightbold,
                fontSize: 20,
              ),
              height05,
              CustomTextWidget(
                text: "Total Sales",
                color: AppColors.white,
                fontWeight: fontWeightnormal,
              ),
            ],
          ),
        ),
        height10,
        Row(
          children: [
            const Expanded(
              child: GreenContainerWidget(
                percentage: "32%",
                text1: '11,75,598.21',
                text2: 'Paid',
              ),
            ),
            width10,
            const Expanded(
              child: RedContainerWidget(
                percentage: "32%",
                text1: '11,75,598.21',
                text2: 'Unpaid',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
