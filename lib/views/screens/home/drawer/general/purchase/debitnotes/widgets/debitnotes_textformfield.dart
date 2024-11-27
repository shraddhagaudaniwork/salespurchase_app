import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/debitnotes/debitnotes_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchaseout/paymentout_controller.dart';
import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class DebitNotesPageTextFormField extends StatelessWidget {
  const DebitNotesPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    DebitNotesController debitNotesController = Get.put(DebitNotesController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: debitNotesController.searchController,
        onChanged: (val) {
          print(
              "=================${debitNotesController.searchController}=================");
        },
      ),
    );
  }
}
