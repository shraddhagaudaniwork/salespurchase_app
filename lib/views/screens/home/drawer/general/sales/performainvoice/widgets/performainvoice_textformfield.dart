import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/paymentin/paymentin_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/performainvoice/performainvoice_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class PerformaInvoiceTextFormField extends StatelessWidget {
  const PerformaInvoiceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    PerformaInvoiceController performaInvoiceController = Get.put(PerformaInvoiceController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: performaInvoiceController.searchController,
        onChanged: (val) {
          print(
              "=================${performaInvoiceController.searchController}=================");
        },
      ),
    );  }
}
