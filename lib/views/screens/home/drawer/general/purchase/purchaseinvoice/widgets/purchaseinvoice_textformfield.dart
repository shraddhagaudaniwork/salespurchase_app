import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchaseinvoice/purchaseinvoice_controller.dart';
import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class PurchaseInvoicePageTextFormField extends StatelessWidget {
  const PurchaseInvoicePageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    PurchaseInvoiceController purchaseInvoiceController =
        Get.put(PurchaseInvoiceController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: purchaseInvoiceController.searchController,
        onChanged: (val) {
          print(
              "=================${purchaseInvoiceController.searchController}=================");
        },
      ),
    );
  }
}
