import 'package:flutter/material.dart';
import 'package:salespurchase_app/components/homecomponent/drawer/widgets/drawercomponent.dart';
import 'package:salespurchase_app/widgets/appbar/custom_appbartextwidget.dart';
import 'package:salespurchase_app/widgets/appbar/custom_appbarwidget.dart';

import '../../utills/app_colors.dart';
import '../../views/screens/home/navigation/widgets/bottomnavigationbar_widget.dart';
import '../../views/screens/home/widgets/floatingactionbutton_widget.dart';

class SalesComponent extends StatelessWidget {
  const SalesComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      drawer: DrawerComponents(),
      appBar: CustomAppBarWidget(
        centerTitle: true,
        title: CustomAppBarTextWidget(
          text: "Sales Component",
        ),
      ),
      bottomNavigationBar: BottomnavigationbarWidget(),
      floatingActionButton: FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
