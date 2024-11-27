import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/deliverychallan/widgets/deliverychallan_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/deliverychallan/widgets/deliverychallan_topheader.dart';

import '../../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../utills/app_colors.dart';
import '../../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../../widgets/floatingactionbutton_widget.dart';

class DeliveryChallan_page extends StatelessWidget {
  const DeliveryChallan_page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,

      drawer: const DrawerComponents(),
      backgroundColor: AppColors.backgroundcolor,
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Delivery Challan",
        ),
      ),
    body:   Padding(
        padding: SizeConfig().getPadding(all: 16,),
        child: Column(
          children: [
            Padding(
              padding: SizeConfig().getPadding(top: 15),
              child: const DeliveryChallanPageTopHeader(),
            ),
            Padding(
              padding: SizeConfig().getPadding(top: 15),
              child: const DeliveryChallanPageTable(),
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
