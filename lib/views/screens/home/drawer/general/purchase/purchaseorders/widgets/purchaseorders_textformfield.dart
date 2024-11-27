import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/inventory/inventory_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchaseorders/purchaseorders_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class PurchaseOrdersPageTextformfield extends StatelessWidget {
  const PurchaseOrdersPageTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    PurchaseOrdersController purchaseOrdersController = Get.put(PurchaseOrdersController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: purchaseOrdersController.searchController,
        onChanged: (val) {
          print(
              "=================${purchaseOrdersController.searchController}=================");
        },
      ),
    );
  }
}
