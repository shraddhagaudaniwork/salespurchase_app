import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/creditnotes/creditnotes_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesinvoice/salesinvoice_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class CreditNotesPageTextFormField extends StatelessWidget {
  const CreditNotesPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    CreditNotesController creditNotesController = Get.put(CreditNotesController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: creditNotesController.searchController,
        onChanged: (val) {
          print(
              "=================${creditNotesController.searchController}=================");
        },
      ),
    );  }
}
