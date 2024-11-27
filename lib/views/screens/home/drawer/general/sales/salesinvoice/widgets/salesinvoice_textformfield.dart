import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/warehouse_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesinvoice/salesinvoice_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class SalesInvoicePageTextFormField extends StatelessWidget {
  const SalesInvoicePageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    SalesInvoiceController salesInvoiceController = Get.put(SalesInvoiceController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: salesInvoiceController.searchController,
        onChanged: (val) {
          print(
              "=================${salesInvoiceController.searchController}=================");
        },
      ),
    );  }
}
