import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchaseout/paymentout_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchasereturn/purchasereturn_controller.dart';
import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class PurchaseReturnPageTextFormField extends StatelessWidget {
  const PurchaseReturnPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    PurchaseReturnController purchaseReturnController = Get.put(PurchaseReturnController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: purchaseReturnController.searchController,
        onChanged: (val) {
          print(
              "=================${purchaseReturnController.searchController}=================");
        },
      ),
    );
  }
}
