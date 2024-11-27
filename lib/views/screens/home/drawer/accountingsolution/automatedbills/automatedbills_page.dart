import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/automatedbills/widgets/automatedbills_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/automatedbills/widgets/automatedbills_topheader.dart';

import '../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../responsive/sizeconfig.dart';
import '../../../../../../utills/app_colors.dart';
import '../../../../../../utills/static_decoration.dart';
import '../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../widgets/floatingactionbutton_widget.dart';

class AutomatedBills_page extends StatelessWidget {
  const AutomatedBills_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      drawer: const DrawerComponents(),
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Automated Bills",
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
              child: const AutomatedBillPageTopHeader(),
            ),
            Padding(
              padding: SizeConfig().getPadding(top: 15),
              child: const AutoMatedBillsPageTable(),
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
