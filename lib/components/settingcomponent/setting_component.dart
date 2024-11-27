import 'package:flutter/material.dart';
import 'package:salespurchase_app/components/homecomponent/drawer/widgets/drawercomponent.dart';
import 'package:salespurchase_app/widgets/appbar/custom_appbarwidget.dart';

import '../../utills/app_colors.dart';
import '../../views/screens/home/navigation/widgets/bottomnavigationbar_widget.dart';
import '../../views/screens/home/widgets/floatingactionbutton_widget.dart';
import '../../widgets/appbar/custom_appbartextwidget.dart';

class SettingComponent extends StatelessWidget {
  const SettingComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      drawer: DrawerComponents(),
      appBar: CustomAppBarWidget(
        centerTitle: true,
        title: CustomAppBarTextWidget(text: "Setting Component"),
      ),
      bottomNavigationBar: BottomnavigationbarWidget(),
      floatingActionButton: FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
