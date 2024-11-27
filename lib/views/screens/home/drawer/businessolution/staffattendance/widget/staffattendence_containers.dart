import 'package:flutter/material.dart';
import 'package:salespurchase_app/utills/static_decoration.dart';
import 'package:salespurchase_app/views/screens/home/drawer/businessolution/staffattendance/widget/widgets.dart';
import '../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../utills/app_colors.dart';

class StaffAttendencePageContainers extends StatelessWidget {
  const StaffAttendencePageContainers({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        //blue Container:
        StaffAttendencePageCommonContainerWidget(
          padding: SizeConfig().getPadding(all: 20),
          width: MediaQuery.of(context).size.width,
          // padding: SizeConfig().getPadding(
          //   top: 5,
          //   right: 20,
          //   left: 20,
          //   bottom: 5,
          // ),
          color: AppColors.bluecolor,
          text: "Present(P)",
          percentage: "5",
        ),
        height15,
        //green and red Container:
        Row(
          children: [
            Expanded(
              child: StaffAttendencePageCommonContainerWidget(
                padding: SizeConfig().getPadding(
                  all: 16,
                ),
                color: AppColors.greencolor,
                text: "Paid leave(PL)",
                percentage: "5",
              ),
            ),
            width10,
            Expanded(
              child: StaffAttendencePageCommonContainerWidget(
                padding: SizeConfig().getPadding(
                  all: 16,
                ),
                color: AppColors.redcolor,
                text: "Absent(A)",
                percentage: "5",
              ),
            ),
          ],
        ),
        height15,
        //dark grey and light grey Container:
        Row(
          children: [
            Expanded(
              child: StaffAttendencePageCommonContainerWidget(
                padding: SizeConfig().getPadding(
                  all: 16,
                ),
                color: AppColors.lightgreycolor,
                text: "Half day(HD)",
                percentage: "5",
              ),
            ),
            width10,
            Expanded(
              child: StaffAttendencePageCommonContainerWidget(
                padding: SizeConfig().getPadding(
                  all: 16,
                ),
                color: AppColors.darkgreycolor,
                text: "Weekly Off(WO)",
                percentage: "5",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
