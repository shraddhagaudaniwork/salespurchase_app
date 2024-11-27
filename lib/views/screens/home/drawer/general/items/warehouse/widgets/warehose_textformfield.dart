import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/warehouse_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class WareHousePageTextFormField extends StatelessWidget {
  const WareHousePageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    WareHouseController wareHouseController = Get.put(WareHouseController());

    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: wareHouseController.searchController,
        onChanged: (val) {
          print(
              "=================${wareHouseController.searchController}=================");
        },
      ),
    );
  }
}
