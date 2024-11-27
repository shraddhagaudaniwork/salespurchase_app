import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/expenses/widgets/expenses_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/expenses/widgets/expenses_topheader.dart';

import '../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../responsive/sizeconfig.dart';
import '../../../../../../utills/app_colors.dart';
import '../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../widgets/floatingactionbutton_widget.dart';

class Expenses_page extends StatelessWidget {
  const Expenses_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      drawer: const DrawerComponents(),
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Expenses",
        ),
      ),
      body: Padding(
        padding: SizeConfig().getPadding(
          all: 16,
        ),
        child: Column(
          children: [
            Padding(
              padding: SizeConfig().getPadding(top: 15),
              child: const ExpensesPageTopHeader(),
            ),
            Padding(
                padding: SizeConfig().getPadding(top: 15),
                child: const ExpensesPageTable()),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionChatButtonWidget(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomnavigationbarWidget(),
      floatingActionButton: const FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
