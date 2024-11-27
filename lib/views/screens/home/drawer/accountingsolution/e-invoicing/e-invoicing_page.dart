import 'package:flutter/material.dart';
import 'package:salespurchase_app/commoncomponent/commontext/commontext.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/e-invoicing/widgets/e-invoicing_button.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/e-invoicing/widgets/e-invoicing_container.dart';

import '../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../responsive/sizeconfig.dart';
import '../../../../../../utills/app_colors.dart';
import '../../../../../../utills/static_decoration.dart';
import '../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../widgets/floatingactionbutton_widget.dart';

class EInvoicing_page extends StatelessWidget {
  const EInvoicing_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      drawer: const DrawerComponents(),
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "E-Invoicing",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Container:
            const EInvoicingPageContainer(),

            Padding(
              padding: SizeConfig().getPadding(bottom: 20),
              child: Center(
                child: CommonBlackTextWidget(
                  text:
                      "Try India’s easiest and fastest e-invoicing\n                       solution today",
                  fontWeight: fontWeight500,
                ),
              ),
            ),
            //Button:
            const EInvoicingButton(),
            //FloatingActionButton:
            Padding(
              padding: SizeConfig().getPadding(all: 16),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionChatButtonWidget(),
                ],
              ),
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
