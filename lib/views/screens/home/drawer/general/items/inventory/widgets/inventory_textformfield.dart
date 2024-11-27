import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/inventory/inventory_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class InventoryPageTextformfield extends StatelessWidget {
  const InventoryPageTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    InventoryController inventoryController = Get.put(InventoryController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: inventoryController.searchController,
        onChanged: (val) {
          print(
              "=================${inventoryController.searchController}=================");
        },
      ),
    );
  }
}
