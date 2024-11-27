import 'package:flutter/material.dart';


import '../../utills/app_colors.dart';
import '../../views/screens/home/navigation/widgets/bottomnavigationbar_widget.dart';
import '../../views/screens/home/widgets/floatingactionbutton_widget.dart';
import '../../widgets/appbar/custom_appbartextwidget.dart';
import '../../widgets/appbar/custom_appbarwidget.dart';
import '../homecomponent/drawer/widgets/drawercomponent.dart';

class PurchaseComponent extends StatelessWidget {
  const PurchaseComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      drawer: DrawerComponents(),
      appBar: CustomAppBarWidget(
        centerTitle: true,
          title: CustomAppBarTextWidget(text: "Purchase Component")
      ),
      bottomNavigationBar: BottomnavigationbarWidget(),
      floatingActionButton: FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
