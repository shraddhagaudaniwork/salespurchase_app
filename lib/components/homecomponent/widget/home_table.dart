import 'package:flutter/material.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/widgets/table/commontablewidget.dart';
import '../../../commoncomponent/commontext/commontext.dart';
import '../../../utills/app_colors.dart';
import '../../../utills/static_decoration.dart';
import '../../../widgets/custom_containerwidget.dart';

class HomePagetable extends StatelessWidget {
  const HomePagetable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //datatable:
          // DataTable(
          //   dividerThickness: 1,
          //   decoration: BoxDecoration(
          //     color: AppColors.white,
          //     borderRadius: BorderRadius.circular(
          //       10,
          //     ),
          //   ),
          //   // dataRowColor: MaterialStateProperty.all(
          //   //   Colors.white,
          //   // ),
          //   columns: const [
          //     DataColumn(
          //       label: CommonBlackTextTitleWidget(text: "Date"),
          //     ),
          //     DataColumn(
          //       label: CommonBlackTextTitleWidget(text: "Invoice#"),
          //     ),
          //     DataColumn(
          //       label: CommonBlackTextTitleWidget(text: "Customer Id"),
          //     ),
          //   ],
          //   rows: List.generate(
          //     5,
          //     (index) => const DataRow(
          //       cells: [
          //         DataCell(
          //           CommonBlackTextWidget(
          //             text: "7787495494",
          //           ),
          //         ),
          //         DataCell(
          //           CommonBlackTextWidget(
          //             text: "778",
          //           ),
          //         ),
          //         DataCell(
          //           CommonBlackTextWidget(
          //             text: "778",
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // height10,
          // Padding(
          //   padding: SizeConfig().getPadding(bottom: 10),
          //   child: GestureDetector(
          //     onTap: () {
          //       Get.toNamed(RoutesName.latestransaction);
          //     },
          //     child: const CommonBlueTextWidget(
          //       text: "View All Transactions",
          //     ),
          //   ),
          // ),

          //common table data widget:
          const CommonTableWidget(
            title1: "Date",
            detail1: "6/11/2024",
            title2: "Invoice",
            detail2: "CT-INV-00006",
            title3: "Customer Number",
            detail3: "ABC Company",
            title4: "Balance",
            detail4: "${50.00}",
          ),
          height10, // 1 container:
          CustomContainerWidget(
            color: AppColors.wcolor,
            borderRadius: BorderRadius.circular(10),
            width: MediaQuery.of(context).size.width,
            padding: SizeConfig().getPadding(
              all: 10,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig().getPadding(
                        left: 2,
                        right: 2,
                        bottom: 5,
                        top: 5,
                      ),
                      child: const CommonBlackTextTitleWidget(
                        text: "Date",
                      ),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig().getPadding(
                      left: 2,
                      right: 2,
                      bottom: 5,
                      top: 5,
                    ),
                    child: const CommonBlackTextTitleWidget(
                      text: ":",
                      fontSize: 13,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig().getPadding(
                        left: 2,
                        right: 2,
                        bottom: 5,
                        top: 5,
                      ),
                      child: const CommonBlackTextWidget(
                        text: "6/11/2024",
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextTitleWidget(
                        text: "Invoice",
                      ),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                    child: const CommonBlackTextTitleWidget(
                      text: ":",
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig().getPadding(
                        left: 2,
                        right: 2,
                        bottom: 5,
                        top: 5,
                      ),
                      child: const CommonBlackTextWidget(
                        text: "CT-INV-00006",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig().getPadding(
                        left: 2,
                        right: 2,
                        bottom: 5,
                        top: 5,
                      ),
                      child: const CommonBlackTextTitleWidget(
                        text: "Customer Number",
                      ),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig().getPadding(
                      left: 2,
                      right: 2,
                      bottom: 5,
                      top: 5,
                    ),
                    child: const CommonBlackTextTitleWidget(
                      text: ":",
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig().getPadding(
                        left: 2,
                        right: 2,
                        bottom: 5,
                        top: 5,
                      ),
                      child: const CommonBlackTextWidget(
                        text: "ABC Company",
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig().getPadding(
                        left: 2,
                        right: 2,
                        bottom: 5,
                        top: 5,
                      ),
                      child: const CommonBlackTextTitleWidget(
                        text: "Balance",
                      ),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(left: 2, right: 10, bottom: 5, top: 5),
                    child: const CommonBlackTextTitleWidget(
                      text: ":",
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextWidget(text: "${50.00}"),
                    ),
                  )
                ],
              ),
            ]),
          ),
          height10,
          // 2 container:
          CustomContainerWidget(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.wcolor,
            width: MediaQuery.of(context).size.width,
            padding: SizeConfig().getPadding(
              all: 10,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextTitleWidget(
                        text: "Date",
                      ),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                    child: const CommonBlackTextTitleWidget(
                      text: ":",
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextWidget(
                        text: "6/11/2024",
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig().getPadding(
                        left: 2,
                        right: 2,
                        bottom: 5,
                        top: 5,
                      ),
                      child: const CommonBlackTextTitleWidget(
                        text: "Invoice",
                      ),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig().getPadding(
                      left: 2,
                      right: 2,
                      bottom: 5,
                      top: 5,
                    ),
                    child: const CommonBlackTextTitleWidget(
                      text: ":",
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig().getPadding(
                        left: 2,
                        right: 2,
                        bottom: 5,
                        top: 5,
                      ),
                      child: const CommonBlackTextWidget(
                        text: "CT-INV-00006",
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextTitleWidget(
                          text: "Customer Number"),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                    child: const CommonBlackTextTitleWidget(text: ":"),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextWidget(text: "ABC Company"),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextTitleWidget(text: "Balance"),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(left: 2, right: 10, bottom: 5, top: 5),
                    child: const CommonBlackTextTitleWidget(text: ":"),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextWidget(text: "${50.00}"),
                    ),
                  )
                ],
              ),
            ]),
          ),
          height10,
          CustomContainerWidget(
            color: AppColors.wcolor,
            borderRadius: BorderRadius.circular(10),
            width: MediaQuery.of(context).size.width,
            padding: SizeConfig().getPadding(
              all: 10,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextTitleWidget(text: "Date"),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                    child: const CommonBlackTextTitleWidget(text: ":"),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextWidget(text: "6/11/2024"),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextTitleWidget(text: "Invoice"),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                    child: const CommonBlackTextTitleWidget(text: ":"),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextWidget(text: "CT-INV-00006"),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextTitleWidget(
                          text: "Customer Number"),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                    child: const CommonBlackTextTitleWidget(text: ":"),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextWidget(text: "ABC Company"),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextTitleWidget(text: "Balance"),
                    ),
                  ),
                  Padding(
                    padding: SizeConfig()
                        .getPadding(left: 2, right: 10, bottom: 5, top: 5),
                    child: const CommonBlackTextTitleWidget(text: ":"),
                  ),
                  Expanded(
                    child: Padding(
                      padding: SizeConfig()
                          .getPadding(left: 2, right: 2, bottom: 5, top: 5),
                      child: const CommonBlackTextWidget(text: "${50.00}"),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    );
    // return CustomContainerWidget(
    //   padding: SizeConfig().getPadding(all: 8),
    //   // height: 1000,
    //   // width: 800,
    //   color: AppColors.white,
    //   borderRadius: circular10BorderRadius,
    //   child: Padding(
    //     padding: SizeConfig().getPadding(all: 8),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         const Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             CommonBlackTextTitleWidget(text: "Date"),
    //             CommonBlackTextTitleWidget(text: "Invoice#"),
    //             CommonBlackTextTitleWidget(text: "CustomerId"),
    //           ],
    //         ),
    //         const Divider(),
    //         Padding(
    //           padding: SizeConfig().getPadding(
    //             top: 5,
    //           ),
    //           child: const Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               CommonBlackTextWidget(text: "6/11/2024"),
    //               CommonBlackTextWidget(text: "CT-INV-00006"),
    //               CommonBlackTextWidget(text: "ABC company"),
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
    //                 text: "6/11/2024",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "CT-INV-00006",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "ABC company",
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
    //                 text: "6/11/2024",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "CT-INV-00006",
    //               ),
    //               CommonBlackTextWidget(
    //                 text: "ABC company",
    //               ),
    //             ],
    //           ),
    //         ),
    //         // Spacer(),
    //         const SizedBox(),
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
