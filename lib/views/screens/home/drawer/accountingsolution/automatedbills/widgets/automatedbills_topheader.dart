import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/accountingsolution/automatedbills/widgets/automatedbills_textformfield.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class AutomatedBillPageTopHeader extends StatelessWidget {
  const AutomatedBillPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "Automated Invoice"),
        ),
        width05,
        const AutomatedBillsPageTextFormField(),
      ],
    );
  }
}
