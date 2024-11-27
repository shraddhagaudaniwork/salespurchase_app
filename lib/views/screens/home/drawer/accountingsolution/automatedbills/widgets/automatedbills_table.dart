import 'package:flutter/material.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/app_colors.dart';
import '../../../../../../../../utills/static_decoration.dart';
import '../../../../../../../../widgets/custom_containerwidget.dart';

class AutoMatedBillsPageTable extends StatelessWidget {
  const AutoMatedBillsPageTable({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        // dataRowColor: MaterialStateProperty.all(
        //   Colors.white,
        // ),
        columns: const [
          DataColumn(
            label: CommonBlackTextTitleWidget(text: "Date"),
          ),
          DataColumn(
            label: CommonBlackTextTitleWidget(text: "Invoice Number"),
          ),
          DataColumn(
            label: CommonBlackTextTitleWidget(text: "Party Name"),
          ),
        ],
        rows: List.generate(
          5,
              (index) => const DataRow(
            cells: [
              DataCell(
                CommonBlackTextWidget(
                  text: "7787495494",
                ),
              ),
              DataCell(
                CommonBlackTextWidget(
                  text: "CT-QT-00001",
                ),
              ),
              DataCell(
                CommonBlackTextWidget(
                  text: "7787495494",
                ),
              ),
            ],
          ),
        ),
      ),
    );
    return CustomContainerWidget(
      padding: SizeConfig().getPadding(all: 8),
      // height: 400.h,
      // width: 400.w,
      color: AppColors.white,
      borderRadius: circular10BorderRadius,
      child: Padding(
        padding: SizeConfig().getPadding(all: 8),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonBlackTextTitleWidget(text: "Party Name"),
                CommonBlackTextTitleWidget(text: "Frequently"),
                CommonBlackTextTitleWidget(text: "Previous Inventory"),
              ],
            ),
            const Divider(),
            Padding(
              padding: SizeConfig().getPadding(
                top: 5,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonBlackTextWidget(
                    text: "ABC Company",
                  ),
                  CommonBlackTextWidget(
                    text: "1 month",
                  ),CommonBlackTextWidget(
                    text: "33r4t43t54",
                  ),
                ],
              ),
            ),  const Divider(),
            Padding(
              padding: SizeConfig().getPadding(
                top: 5,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonBlackTextWidget(
                    text: "ABC Company",
                  ),
                  CommonBlackTextWidget(
                    text: "1 month",
                  ),CommonBlackTextWidget(
                    text: "33r4t43t54",
                  ),
                ],
              ),
            ),

            const Center(
              child: CommonBlueTextWidget(
                text: "View All Transactions",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
