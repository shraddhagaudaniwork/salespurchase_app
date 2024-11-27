import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/widgets/warehose_textformfield.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/paymentin/widgets/paymentin_textformfield.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/salesinvoice/widgets/salesinvoice_textformfield.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class PaymentInPageTopHeader extends StatelessWidget {
  const PaymentInPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "Payment In"),
        ),
        width05,
        const PaymentInPageTextFormField(),
      ],
    );
  }
}
