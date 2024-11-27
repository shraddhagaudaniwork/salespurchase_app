import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/quotation/widgets/quotation_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/quotation/widgets/quotation_topheader.dart';

import '../../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../utills/app_colors.dart';
import '../../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../../widgets/floatingactionbutton_widget.dart';

class Quotation_page extends StatelessWidget {
  const Quotation_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const DrawerComponents(),
      backgroundColor: AppColors.backgroundcolor,
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Quotation",
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
              child: const QuotationPageTopHeader(),
            ),
            Padding(
              padding: SizeConfig().getPadding(top: 15),
              child: const QuotationPageTable(),
            ),
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
