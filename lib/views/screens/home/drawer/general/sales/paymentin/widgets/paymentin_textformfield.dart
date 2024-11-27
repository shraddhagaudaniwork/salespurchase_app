import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/warehouse_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/paymentin/paymentin_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesinvoice/salesinvoice_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class PaymentInPageTextFormField extends StatelessWidget {
  const PaymentInPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentInController paymentInController = Get.put(PaymentInController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: paymentInController.searchController,
        onChanged: (val) {
          print(
              "=================${paymentInController.searchController}=================");
        },
      ),
    );  }
}
