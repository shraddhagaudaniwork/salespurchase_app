import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/components/homecomponent/homecomponent_controller.dart';

import '../../../widgets/custom_textformfieldwidget.dart';

class HomePageTextformfield extends StatelessWidget {
  const HomePageTextformfield({super.key});

  @override
  Widget build(BuildContext context) {
    HomeComponentController homeComponentController =
        Get.put(HomeComponentController());
    return Expanded(
      child: CustomTextFormField(
        hintText: "Search",
        controller: homeComponentController.searchController,
        onChanged: (val) {
          print(
              "=================${homeComponentController.searchController}=================");
        },
      ),
    );
  }
}
