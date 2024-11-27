import 'package:flutter/material.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/app_colors.dart';
import '../../../../../../../../utills/static_decoration.dart';
import '../../../../../../../../widgets/custom_containerwidget.dart';

class DeliveryChallanPageTable extends StatelessWidget {
  const DeliveryChallanPageTable({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Column(
          children: [
            DataTable(
              // dataRowColor: MaterialStateProperty.all(
              //   Colors.white,
              // ),
              columns: const [
                DataColumn(
                  label: CommonBlackTextTitleWidget(text: "Date"),
                ),
                DataColumn(
                  label: CommonBlackTextTitleWidget(
                      text: "Delivery Challan Number"),
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
            height10,
            Padding(
              padding: SizeConfig().getPadding(bottom: 10),
              child: const CommonBlueTextWidget(
                text: "View All Transactions",
              ),
            ),
          ],
        ),
      ),
    );

    // return CustomContainerWidget(
    //   padding: SizeConfig().getPadding(all: 8),
    //   // height: 400.h,
    //   // width: 400.w,
    //   color: AppColors.white,
    //   borderRadius: circular10BorderRadius,
    //   child: Padding(
    //     padding: SizeConfig().getPadding(
    //       all: 8,
    //     ),
    //     child: Column(
    //       children: [
    //         const Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             CommonBlackTextTitleWidget(text: "Date"),
    //             CommonBlackTextTitleWidget(text: "DeliveryChallan Number"),
    //             CommonBlackTextTitleWidget(text: "Party Name"),
    //           ],
    //         ),
    //         const Divider(),
    //         Padding(
    //           padding: SizeConfig().getPadding(
    //             top: 5,
    //           ),
    //           child: const Row(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               CommonBlackTextWidget(
    //                 text: "12/08/24",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "02",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "ABC Company",
    //               ),
    //             ],
    //           ),
    //         ),
    //         const Divider(),
    //         Padding(
    //           padding: SizeConfig().getPadding(
    //             top: 5,
    //           ),
    //           child: const Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               CommonBlackTextWidget(
    //                 text: "12/08/24",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "02",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "ABC Company",
    //               ),
    //             ],
    //           ),
    //         ),
    //         const Divider(),
    //         Padding(
    //           padding: SizeConfig().getPadding(
    //             top: 5,
    //           ),
    //           child: const Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               CommonBlackTextWidget(
    //                 text: "12/08/24",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "01",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "ABC Company",
    //               ),
    //             ],
    //           ),
    //         ),
    //         const Divider(),
    //         Padding(
    //           padding: SizeConfig().getPadding(
    //             top: 5,
    //           ),
    //           child: const Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               CommonBlackTextWidget(
    //                 text: "12/08/24",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "02",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "ABC Company",
    //               ),
    //             ],
    //           ),
    //         ),
    //         const Divider(),
    //         Padding(
    //           padding: SizeConfig().getPadding(
    //             top: 5,
    //           ),
    //           child: const Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               CommonBlackTextWidget(
    //                 text: "12/08/24",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "02",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "ABC Company",
    //               ),
    //             ],
    //           ),
    //         ),
    //         const Center(
    //           child: CommonBlueTextWidget(
    //             text: "View All Transactions",
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
