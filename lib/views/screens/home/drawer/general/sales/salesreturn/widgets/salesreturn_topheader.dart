import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/quotation/widgets/quotation_textformfield.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesreturn/widgets/salesreturn_textformfield.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class SalesReturnPageTopHeader extends StatelessWidget {
  const SalesReturnPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "Sales Return"),
        ),
        width05,
        const SalesReturnPageTextFormField(),
      ],
    );
  }
}
