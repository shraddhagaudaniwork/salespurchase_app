import 'package:flutter/material.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/app_colors.dart';
import '../../../../../../../../utills/static_decoration.dart';
import '../../../../../../../../widgets/custom_containerwidget.dart';

class InventoryPageTable extends StatelessWidget {
  const InventoryPageTable({super.key});

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
              dividerThickness: 1,

              // dataRowColor: MaterialStateProperty.all(
              //   Colors.white,
              // ),
              columns: const [
                DataColumn(
                  label: CommonBlackTextTitleWidget(text: "Date"),
                ),
                DataColumn(
                  label: CommonBlackTextTitleWidget(text: "Invoice#"),
                ),
                DataColumn(
                  label: CommonBlackTextTitleWidget(text: "Customer Loan"),
                ),
                DataColumn(
                  label: CommonBlackTextTitleWidget(text: "Company"),
                ),
                DataColumn(
                  label: CommonBlackTextTitleWidget(text: "Job"),
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
                        text: "7787495494",
                      ),
                    ),
                    DataCell(
                      CommonBlackTextWidget(
                        text: "7787495494",
                      ),
                    ),
                    DataCell(
                      CommonBlackTextWidget(
                        text: "7787495494",
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
    //     padding: SizeConfig().getPadding(all: 8),
    //     child: Column(
    //       children: [
    //         const Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             CommonBlackTextTitleWidget(text: "Item Name"),
    //             CommonBlackTextTitleWidget(text: "Item Code"),
    //           ],
    //         ),
    //         const Divider(),
    //         Padding(
    //           padding: SizeConfig().getPadding(
    //             top: 5,
    //           ),
    //           child: const Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //
    //             children: [
    //               CommonBlackTextWidget(
    //                 text: "77777 AshokPan Center",
    //               ), CommonBlackTextWidget(
    //                 text: "7787495494",
    //               ),
    //             ],
    //           ),
    //         ),
    //        // const Spacer(flex: 2,),
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
