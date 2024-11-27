import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/quotation/quotation_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class QuotationPageTextFormField extends StatelessWidget {
  const QuotationPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    QuotationController quotationController = Get.put(QuotationController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: quotationController.searchController,
        onChanged: (val) {
          print(
              "=================${quotationController.searchController}=================");
        },
      ),
    );  }
}
