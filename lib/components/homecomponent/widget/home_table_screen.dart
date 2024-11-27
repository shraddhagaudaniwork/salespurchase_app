// import 'package:flutter/material.dart';
// import 'package:demoq/screens/people_screen/widgets/scrollbar_widget.dart'
// as scrollbar;
// import 'package:demoq/screens/widgets/table_widget/data_table.dart'
// as datatable;
//
// import '../../../responsive/sizeconfig.dart';
// import '../../../utills/app_colors.dart';
// import '../../../utils/colors.dart';
// import '../../../utils/responsive_framework.dart';
// import '../../../utils/size_utils.dart';
// import '../../../utils/texts/poppins_bold_text.dart';
//
//
// class TransactionTableWidget extends StatefulWidget {
//   const TransactionTableWidget({super.key});
//
//   @override
//   State<TransactionTableWidget> createState() => _TransactionTableWidgetState();
// }
//
// class _TransactionTableWidgetState extends State<TransactionTableWidget> {
//   final ScrollController scrollController = ScrollController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         SingleChildScrollView(
//           controller: scrollController,
//           scrollDirection: Axis.horizontal,
//           physics: const NeverScrollableScrollPhysics(),
//           child: datatable.DataTable(
//             dataRowMaxHeight: 65,
//             columnSpacing: SizeConfig().getHorizontalSize(26),
//             headingRowColor:
//             WidgetStateProperty.all(AppColors.tableHeaderColor),
//             columns: [
//               datatable.DataColumn(
//                 label: SizedBox(
//                   width: SizeConfig().getHorizontalSize(130),
//                   child: const Center(
//                     child: PoppinsBoldText(
//                       text: "ORDER NUM",
//                       textAlign: TextAlign.center,
//                       maxLines: 2,
//                       fontSize: 16,
//                       color: AppColors.tableTitleColor,
//                     ),
//                   ),
//                 ),
//               ),
//               datatable.DataColumn(
//                 label: SizedBox(
//                   width: SizeConfig().getHorizontalSize(140),
//                   child: const PoppinsBoldText(
//                     text: "NAME",
//                     color: AppColors.tableTitleColor,
//                     fontSize: 16,
//                     maxLines: 2,
//                   ),
//                 ),
//               ),
//               datatable.DataColumn(
//                 label: SizedBox(
//                   width: SizeConfig().getHorizontalSize(130),
//                   child: const Center(
//                     child: PoppinsBoldText(
//                       text: "AMOUNT",
//                       color: AppColors.tableTitleColor,
//                       fontSize: 16,
//                       maxLines: 2,
//                     ),
//                   ),
//                 ),
//               ),
//               datatable.DataColumn(
//                 label: SizedBox(
//                   width: SizeConfig().getHorizontalSize(80),
//                   child: const Center(
//                     child: PoppinsBoldText(
//                       text: "ITEMS",
//                       fontSize: 16,
//                       maxLines: 2,
//                       color: AppColors.tableTitleColor,
//                     ),
//                   ),
//                 ),
//               ),
//               datatable.DataColumn(
//                 label: SizedBox(
//                   width: SizeConfig().getHorizontalSize(130),
//                   child: const Center(
//                     child: PoppinsBoldText(
//                       text: "TYPE",
//                       maxLines: 2,
//                       fontSize: 16,
//                       color: AppColors.tableTitleColor,
//                     ),
//                   ),
//                 ),
//               ),
//               datatable.DataColumn(
//                 label: SizedBox(
//                   width: SizeConfig().getHorizontalSize(130),
//                   child: const Center(
//                     child: PoppinsBoldText(
//                       text: "PAYMENT",
//                       fontSize: 16,
//                       maxLines: 2,
//                       color: AppColors.tableTitleColor,
//                     ),
//                   ),
//                 ),
//               ),
//               datatable.DataColumn(
//                 label: SizedBox(
//                   width: Responsive.isMobile(context)
//                       ? SizeConfig().getHorizontalSize(200)
//                       : SizeConfig().getHorizontalSize(230),
//                   child: const Center(
//                     child: PoppinsBoldText(
//                       text: "UPDATED ON",
//                       fontSize: 16,
//                       maxLines: 2,
//                       color: AppColors.tableTitleColor,
//                     ),
//                   ),
//                 ),
//               ),
//               datatable.DataColumn(
//                 label: SizedBox(
//                   width: SizeConfig().getHorizontalSize(180),
//                   child: const Center(
//                     child: PoppinsBoldText(
//                       text: "ACTION",
//                       fontSize: 16,
//                       maxLines: 2,
//                       color: AppColors.tableTitleColor,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//             rows: List.generate(
//               10,
//                   (index) => datatable.DataRow(
//                   color: WidgetStateProperty.all(index.isEven
//                       ? AppColors.whiteColor
//                       : AppColors.tableHeaderColor),
//                   cells: [
//                     datatable.DataCell(SizedBox(
//                       width: SizeConfig().getHorizontalSize(130),
//                       child: const Center(
//                         child: PoppinsBoldText(
//                           text: "AB00123",
//                           fontSize: 14,
//                           color: AppColors.blackColor,
//                         ),
//                       ),
//                     )),
//                     datatable.DataCell(
//                       SizedBox(
//                         width: SizeConfig().getHorizontalSize(140),
//                         child: const PoppinsBoldText(
//                           text: "Jimmy taylor",
//                           fontSize: 16,
//                           color: AppColors.blackColor,
//                         ),
//                       ),
//                     ),
//                     datatable.DataCell(
//                       SizedBox(
//                         width: SizeConfig().getHorizontalSize(130),
//                         child: const Center(
//                           child: PoppinsBoldText(
//                             text: r'$120.00',
//                             fontSize: 14,
//                             color: AppColors.blackColor,
//                             maxLines: 2,
//                           ),
//                         ),
//                       ),
//                     ),
//                     datatable.DataCell(
//                       SizedBox(
//                         width: SizeConfig().getHorizontalSize(80),
//                         child: const Center(
//                           child: PoppinsBoldText(
//                             text: '2',
//                             maxLines: 2,
//                             fontSize: 14,
//                             color: AppColors.primaryColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                     datatable.DataCell(
//                       SizedBox(
//                         width: SizeConfig().getHorizontalSize(130),
//                         child: const Center(
//                           child: PoppinsBoldText(
//                             text: 'Dine-in',
//                             fontSize: 14,
//                             maxLines: 2,
//                             color: AppColors.blackColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                     datatable.DataCell(
//                       SizedBox(
//                         width: SizeConfig().getHorizontalSize(130),
//                         child: const Center(
//                           child: PoppinsBoldText(
//                             text: 'Cash',
//                             maxLines: 2,
//                             fontSize: 14,
//                             color: AppColors.blackColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                     datatable.DataCell(
//                       SizedBox(
//                         width: Responsive.isMobile(context)
//                             ? SizeConfig().getHorizontalSize(200)
//                             : SizeConfig().getHorizontalSize(230),
//                         child: const Center(
//                           child: PoppinsBoldText(
//                             text: '12 June 2020 12:30 pm',
//                             maxLines: 2,
//                             color: AppColors.greyColor,
//                           ),
//                         ),
//                       ),
//                     ),
//                     datatable.DataCell(
//                       SizedBox(
//                         width: SizeConfig().getHorizontalSize(180),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             //View Button
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 height: SizeConfig().getSize(45),
//                                 width: SizeConfig().getSize(35),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                     SizeConfig().getSize(4),
//                                   ),
//                                   color: AppColors.lightGreyColor,
//                                 ),
//                                 child: const Icon(
//                                   Icons.remove_red_eye_outlined,
//                                   size: 20,
//                                   color: AppColors.greenColor,
//                                 ),
//                               ),
//                             ),
//                             //Delete Button
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 height: SizeConfig().getSize(45),
//                                 width: SizeConfig().getSize(35),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                     SizeConfig().getSize(4),
//                                   ),
//                                   color: AppColors.lightGreyColor,
//                                 ),
//                                 child: const Icon(
//                                   Icons.delete,
//                                   size: 20,
//                                   color: AppColors.redColor,
//                                 ),
//                               ),
//                             ),
//                             //Edit Button
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Container(
//                                 height: SizeConfig().getSize(45),
//                                 width: SizeConfig().getSize(35),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(
//                                     SizeConfig().getSize(4),
//                                   ),
//                                   color: AppColors.lightGreyColor,
//                                 ),
//                                 child: const Icon(
//                                   Icons.edit,
//                                   size: 20,
//                                   color: AppColors.editButtonColor,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ]),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 15,
//         ),
//
//         //ScrollBar
//         scrollbar.AdaptiveScrollbar(
//           controller: scrollController,
//           sliderActiveColor: Colors.grey.shade600,
//           underColor: Colors.grey.withOpacity(0.2),
//           sliderDefaultColor: Colors.grey.shade400,
//           position: scrollbar.ScrollbarPosition.bottom,
//           // sliderHeight: 300,
//           child: const SizedBox(),
//         ),
//       ],
//     );
//   }
// }
