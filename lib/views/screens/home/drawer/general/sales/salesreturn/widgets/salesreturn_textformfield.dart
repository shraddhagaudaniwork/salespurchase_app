import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesreturn/salesreturn_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class SalesReturnPageTextFormField extends StatelessWidget {
  const SalesReturnPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    SalesReturnController salesReturnController =
        Get.put(SalesReturnController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: salesReturnController.searchController,
        onChanged: (val) {
          print(
              "=================${salesReturnController.searchController}=================");
        },
      ),
    );
  }
}
