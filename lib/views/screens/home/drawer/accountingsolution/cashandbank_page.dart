import 'package:flutter/material.dart';
import 'package:salespurchase_app/widgets/custom_textwidget.dart';

import '../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../utills/app_colors.dart';
import '../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../widgets/floatingactionbutton_widget.dart';

class CashAndBank_page extends StatelessWidget {
  const CashAndBank_page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      drawer: DrawerComponents(),
      appBar: CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Cash & Banks",
        ),
      ),
      bottomNavigationBar: BottomnavigationbarWidget(),
      floatingActionButton: const FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
