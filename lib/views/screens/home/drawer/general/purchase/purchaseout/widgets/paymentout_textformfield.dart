import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchaseout/paymentout_controller.dart';
import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class PaymentOutPageTextFormField extends StatelessWidget {
  const PaymentOutPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    PaymentOutController paymentOutController = Get.put(PaymentOutController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: paymentOutController.searchController,
        onChanged: (val) {
          print(
              "=================${paymentOutController.searchController}=================");
        },
      ),
    );
  }
}
