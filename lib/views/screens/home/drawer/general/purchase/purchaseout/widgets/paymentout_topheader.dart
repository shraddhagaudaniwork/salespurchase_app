import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchaseout/widgets/paymentout_textformfield.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/creditnotes/widgets/creditnotes_textformfield.dart';
import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class PaymentOutPageTopHeader extends StatelessWidget {
  const PaymentOutPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "Payment Out"),
        ),
        width05,
        const PaymentOutPageTextFormField(),
      ],
    );
  }
}
