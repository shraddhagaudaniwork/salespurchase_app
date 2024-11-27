import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/expenses/expenses_controller.dart';
import 'package:salespurchase_app/views/screens/home/drawer/businessolution/staffattendance/staffattendence_controller.dart';

import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class StaffAttendencePageTextFormField extends StatelessWidget {
  const StaffAttendencePageTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    StaffAttendenceController  staffAttendenceController = Get.put(StaffAttendenceController());

    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: staffAttendenceController.searchController,
        onChanged: (val) {
          print(
              "=================${staffAttendenceController.searchController}=================");
        },
      ),
    );
  }
}
