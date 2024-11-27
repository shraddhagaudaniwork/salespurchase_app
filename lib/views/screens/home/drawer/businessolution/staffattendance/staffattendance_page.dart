import 'package:flutter/material.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/views/screens/home/drawer/businessolution/staffattendance/widget/staffattendence_containers.dart';
import 'package:salespurchase_app/views/screens/home/drawer/businessolution/staffattendance/widget/staffattendence_table.dart';
import 'package:salespurchase_app/views/screens/home/drawer/businessolution/staffattendance/widget/staffattendence_topheader.dart';
import 'package:salespurchase_app/views/screens/home/drawer/businessolution/staffattendance/widget/widgets.dart';
import '../../../../../../components/homecomponent/drawer/widgets/drawercomponent.dart';
import '../../../../../../utills/app_colors.dart';
import '../../../../../../utills/static_decoration.dart';
import '../../../../../../widgets/appbar/custom_appbartextwidget.dart';
import '../../../../../../widgets/appbar/custom_appbarwidget.dart';
import '../../../navigation/widgets/bottomnavigationbar_widget.dart';
import '../../../widgets/floatingactionbutton_widget.dart';

class StaffAttendance_page extends StatelessWidget {
  const StaffAttendance_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      drawer: const DrawerComponents(),
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Staff Attendance",
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: padding16,
          child: Column(
            children: [
              const StaffAttendencePageContainers(),
              Padding(
                padding: SizeConfig().getPadding(
                  top: 15,
                ),
                child: const StaffAttendencePageTopHeader(),
              ),
              Padding(
                padding: SizeConfig().getPadding(
                  top: 15,
                ),
                child: const StaffAttendencePageTable(),
              ),
              // const Spacer(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionChatButtonWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomnavigationbarWidget(),
      floatingActionButton: const FloatingactionaddbuttonWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
