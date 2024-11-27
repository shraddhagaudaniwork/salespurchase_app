import 'package:flutter/material.dart';

import '../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../utills/app_colors.dart';
import '../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../widgets/floatingactionbutton_widget.dart';

class PosBilling_page extends StatelessWidget {
  const PosBilling_page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      drawer: DrawerComponents(),
      appBar: CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Pos Billing",
        ),
      ),
      bottomNavigationBar: BottomnavigationbarWidget(),
      floatingActionButton: const FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
