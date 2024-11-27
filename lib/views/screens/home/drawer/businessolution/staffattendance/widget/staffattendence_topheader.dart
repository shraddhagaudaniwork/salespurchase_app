import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/expenses/widgets/expenses_textformfield.dart';
import 'package:salespurchase_app/views/screens/home/drawer/businessolution/staffattendance/widget/staffattendnce_textformfield.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class StaffAttendencePageTopHeader extends StatelessWidget {
  const StaffAttendencePageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "Expenses"),
        ),
        width05,
        const StaffAttendencePageTextFormField(),
      ],
    );
  }
}
