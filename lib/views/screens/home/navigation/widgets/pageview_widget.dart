import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchaseinvoice/purchaseinvoice_page.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesinvoice/salesinvoice_page.dart';

import '../../../../../components/homecomponent/home_component.dart';
import '../../../../../components/purchasecomponent/purchase_component.dart';
import '../../../../../components/salescomponent/sales_component.dart';
import '../../../../../components/settingcomponent/setting_component.dart';
import '../navigation_controller.dart';

class PageviewWidget extends StatelessWidget {
  const PageviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    NavigationController navigationController = Get.put(NavigationController());
    // return Obx(() {

    return PageView(
      controller: navigationController.pageController,
      scrollDirection: Axis.horizontal,
      // physics: const CarouselScrollPhysics(),
      // allowImplicitScrolling: true,
      pageSnapping: true,
      onPageChanged: (val) {
        navigationController.changePageViewIndex(val);
      },
      children: const [
        HomeComponent(),
        SalesInvoice_page(),
        // SalesComponent(),
        PurchaseInvoice_page(),
        // PurchaseComponent(),
        SettingComponent(),
      ],
    );
    // });
  }
}
