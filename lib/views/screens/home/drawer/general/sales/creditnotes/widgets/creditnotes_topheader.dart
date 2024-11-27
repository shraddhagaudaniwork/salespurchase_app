import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/widgets/warehose_textformfield.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/creditnotes/widgets/creditnotes_textformfield.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesinvoice/widgets/salesinvoice_textformfield.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class CreditNotesPageTopHeader extends StatelessWidget {
  const CreditNotesPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "Credit Notes"),
        ),
        width05,
        const CreditNotesPageTextFormField(),
      ],
    );
  }
}
