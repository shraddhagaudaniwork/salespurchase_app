import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/warehouse_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/widgets/warehouse_container.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/widgets/warehouse_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/widgets/warehouse_topheader.dart';


import '../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../utills/app_colors.dart';
import '../../../../../../../utills/static_decoration.dart';
import '../../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../../widgets/appbar/custom_appbarwidget.dart';

import '../../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../../widgets/floatingactionbutton_widget.dart';

class Warehouse_page extends StatelessWidget {
  const Warehouse_page({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: const DrawerComponents(),
      backgroundColor: AppColors.backgroundcolor,
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(text: "Warehouse"),
      ),
      body: Padding(
        padding: padding16,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const WareHousePageContainer(),
              Padding(
                padding: SizeConfig().getPadding(top: 15),
                child: const WareHousePageTopHeader(),
              ),
              Padding(
                padding: SizeConfig().getPadding(top: 15),
                child: const WareHousePageTable(),
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
