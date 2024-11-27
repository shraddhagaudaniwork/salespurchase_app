import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/deliverychallan/deliverychallan_controller.dart';
import '../../../../../../../../widgets/custom_textformfieldwidget.dart';

class DeliveryChallanTextFormField extends StatelessWidget {
  const DeliveryChallanTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    DeliverChallanController deliverChallanController = Get.put(DeliverChallanController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: deliverChallanController.searchController,
        onChanged: (val) {
          print(
              "=================${deliverChallanController.searchController}=================");
        },
      ),
    );
  }
}
