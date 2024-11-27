import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/expenses/expenses_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class ExpensesPageTextFormField extends StatelessWidget {
  const ExpensesPageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    ExpensesController  expensesController = Get.put(ExpensesController());

    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: expensesController.searchController,
        onChanged: (val) {
          print(
              "=================${expensesController.searchController}=================");
        },
      ),
    );
  }
}
