import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchaseout/widgets/paymentout_textformfield.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchasereturn/widgets/purchasereturn_textformfield.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/creditnotes/widgets/creditnotes_textformfield.dart';
import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class PurchaseReturnPageTopHeader extends StatelessWidget {
  const PurchaseReturnPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "Purchase Return"),
        ),
        width05,
        const PurchaseReturnPageTextFormField(),
      ],
    );
  }
}
