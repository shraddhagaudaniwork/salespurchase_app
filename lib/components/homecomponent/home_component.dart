import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/components/homecomponent/widget/home_container.dart';
import 'package:salespurchase_app/components/homecomponent/widget/home_table.dart';
import 'package:salespurchase_app/components/homecomponent/widget/home_topheader.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/utills/static_decoration.dart';

import '../../commoncomponent/commontext/commontext.dart';
import '../../routes/route_name.dart';
import '../../utills/app_colors.dart';

import '../../views/screens/home/drawer/drawer_controller.dart';
import '../../views/screens/home/homecontroller.dart';
import '../../views/screens/home/navigation/navigation_controller.dart';
import '../../views/screens/home/navigation/widgets/bottomnavigationbar_widget.dart';
import '../../views/screens/home/widgets/floatingactionbutton_widget.dart';
import '../../widgets/appbar/custom_appbartextwidget.dart';
import '../../widgets/appbar/custom_appbarwidget.dart';

import 'drawer/widgets/drawercomponent.dart';
import 'homecomponent_controller.dart';

class HomeComponent extends StatelessWidget {
  const HomeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    // HomeComponentController homeComponentController =
    //     Get.put(HomeComponentController());
    //
    // ExpensionTileController expensionTileController =
    //     Get.put(ExpensionTileController());
    //
    // HomeController homeController = Get.put(HomeController());
    // NavigationController navigationController = Get.put(NavigationController());
    //
    // ItemTileController itemTileController = Get.put(ItemTileController());
    // SalesTileController salesTileController = Get.put(SalesTileController());
    // PurchaseTileController purchaseTileController =
    //     Get.put(PurchaseTileController());

    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Dashboard",
        ),
      ),
      drawer: const DrawerComponents(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: SizeConfig().getPadding(all: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // container (2 rows total 4 container)
              const HomePageContainer(),

              const HomePagetopheader(),
              // Row(
              //   children: [
              //     const CommonDarkGreyTextTitleWidget(
              //       text: 'Latest Transactions',
              //     ),
              //     width05,
              //     const HomePageTextformfield(),
              //     // Expanded(
              //     //   flex: 12,
              //     //   child: CustomContainerWidget(
              //     //     padding: const EdgeInsets.all(8),
              //     //     alignment: Alignment.center,
              //     //     // height: 40.h,
              //     //     // width: 100.w,
              //     //     color: AppColors.white,
              //     //     borderRadius: circular10BorderRadius,
              //     //     child: CustomTextFormField(
              //     //       borderRadius: 12,
              //     //       controller: homeComponentController.searchController,
              //     //       onChanged: (val) {
              //     //         print(
              //     //             "=================${homeComponentController.searchController}========");
              //     //       },
              //     //     ),
              //     //   ),
              //     // ),
              //   ],
              // ),
              Padding(
                padding: SizeConfig().getPadding(top: 15, bottom: 15),
                child: const HomePagetable(),
              ),

              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutesName.latestransaction);
                  },
                  child: const CommonBlueTextWidget(
                    text: "View All Transactions",
                  ),
                ),
                // CustomContainerWidget(
                //   padding: SizeConfig().getPadding(all: 8),
                //   // height: 1000,
                //   // width: 800,
                //   color: AppColors.white,
                //   borderRadius: circular10BorderRadius,
                //   child: Padding(
                //     padding: SizeConfig().getPadding(all: 8),
                //     child: const Column(
                //       mainAxisSize: MainAxisSize.min,
                //       children: [
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             CommonBlackTextTitleWidget(text: "Date"),
                //             CommonBlackTextTitleWidget(text: "Invoice#"),
                //             CommonBlackTextTitleWidget(text: "CustomerId"),
                //           ],
                //         ),
                //         Divider(),
                //         Row(
                //           children: [
                //             CommonBlackTextWidget(text: "6/11/2024"),
                //           ],
                //         ),
                //
                //
                //         )
                //       ],
                //     ),
                //   ),
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionChatButtonWidget(),
                ],
              ),
              // Center(
              //     child: Container(
              //         child: SfCartesianChart(
              //             series: <CartesianSeries>[
              //               // Renders spline chart
              //               SplineSeries<ChartData, int>(
              //                   dataSource: chartData,
              //                   xValueMapper: (ChartData data, _) => data.x,
              //                   yValueMapper: (ChartData data, _) => data.y
              //               )
              //             ]
              //         )
              //     )
              // )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomnavigationbarWidget(),
      floatingActionButton: const FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
