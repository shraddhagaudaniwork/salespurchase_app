import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesreturn/widgets/salesreturn_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesreturn/widgets/salesreturn_topheader.dart';
import '../../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../utills/app_colors.dart';
import '../../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../../widgets/floatingactionbutton_widget.dart';

class SalesReturn_page extends StatelessWidget {
  const SalesReturn_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      drawer: const DrawerComponents(),
      backgroundColor: AppColors.backgroundcolor,
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Sales Return",
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
              child: const SalesReturnPageTopHeader(),
            ),
            Padding(
              padding: SizeConfig().getPadding(top: 15),
              child: const SalesReturnPageTable(),
            ),
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
