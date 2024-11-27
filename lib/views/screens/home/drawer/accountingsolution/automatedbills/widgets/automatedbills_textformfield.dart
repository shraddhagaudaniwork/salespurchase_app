import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/automatedbills/automatedbills_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class AutomatedBillsPageTextFormField extends StatelessWidget {
  const AutomatedBillsPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    AutomatedBillsController automatedBillsController = Get.put(AutomatedBillsController());

    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: automatedBillsController.searchController,
        onChanged: (val) {
          print(
              "=================${automatedBillsController.searchController}=================");
        },
      ),
    );
  }
}
