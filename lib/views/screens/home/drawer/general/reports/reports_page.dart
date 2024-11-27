import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/reports/report_container.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/reports/reports_controller.dart';
import '../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../utills/app_colors.dart';
import '../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../widgets/floatingactionbutton_widget.dart';

class Reports_page extends StatelessWidget {
  const Reports_page({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: DrawerComponents(),
      backgroundColor: AppColors.backgroundcolor,
      appBar: CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Reports Notes",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ReportPageContainer(),
          ],
        ),
      ),
      bottomNavigationBar: BottomnavigationbarWidget(),
      floatingActionButton: FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
