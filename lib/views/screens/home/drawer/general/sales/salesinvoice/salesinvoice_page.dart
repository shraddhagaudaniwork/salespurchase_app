import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesinvoice/widgets/sales_container.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesinvoice/widgets/salesinvoice_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesinvoice/widgets/salesinvoice_topheader.dart';

import '../../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../utills/app_colors.dart';
import '../../../../../../../utills/static_decoration.dart';
import '../../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../../widgets/floatingactionbutton_widget.dart';

class SalesInvoice_page extends StatelessWidget {
  const SalesInvoice_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const DrawerComponents(),
      backgroundColor: AppColors.backgroundcolor,
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Sales Invoice",
        ),
      ),
      body: Padding(
        padding: padding16,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SalesInvoicePageContainer(),
              Padding(
                padding: SizeConfig().getPadding(top: 15),
                child: const SalesInvoicePageTopHeader(),
              ),
              Padding(
                padding: SizeConfig().getPadding(top: 15),
                child: const SalesInvoicePageTable(),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionChatButtonWidget(),
                ],
              ),
            ],
          ),
        ),
        // child: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     BlueContainerWidget(
        //       width: double.infinity,
        //       padding: padding16,
        //       child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           CustomTextWidget(
        //             text: "20",
        //             color: AppColors.white,
        //             fontWeight: fontWeightbold,
        //             fontSize: 20.sp,
        //           ),
        //           height05,
        //           CustomTextWidget(
        //             text: "Items Expiring(30 days)",
        //             color: AppColors.white,
        //             // fontWeight: fontWeightbold,
        //           ),
        //         ],
        //       ),
        //     ),
        //     height10,
        //     SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: [
        //           const GreenContainerWidget(
        //             percentage: "32%",
        //             text1: '11,75,598.92',
        //             text2: 'Stock Value',
        //           ),
        //           width10,
        //           const RedContainerWidget(
        //             percentage: "32%",
        //             text1: '5',
        //             text2: 'Low Stock',
        //           ),
        //         ],
        //       ),
        //     ),
        //     height15,
        //     Row(
        //       children: [
        //         const CommonDarkGreyTextTitleWidget(text: "All Warehouses"),
        //         width10,
        //         Expanded(
        //           flex: 12,
        //           child: CustomContainerWidget(
        //             padding: padding8,
        //             alignment: Alignment.center,
        //             // height: 40.h,
        //             // width: 100.w,
        //             color: AppColors.white,
        //             borderRadius: circular10BorderRadius,
        //             child: CustomTextFormField(
        //               borderRadius: 12,
        //               controller: wareHouseController.searchController,
        //               onChanged: (val) {
        //                 print(
        //                     "=================${wareHouseController.searchController}========");
        //               },
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
      ),
      bottomNavigationBar: const BottomnavigationbarWidget(),
      floatingActionButton: const FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
