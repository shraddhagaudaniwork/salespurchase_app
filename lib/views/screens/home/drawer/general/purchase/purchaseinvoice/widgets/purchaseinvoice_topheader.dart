import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/creditnotes/widgets/creditnotes_textformfield.dart';
import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class PurchaseInvoicePageTopHeader extends StatelessWidget {
  const PurchaseInvoicePageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "Purchase Invoice"),
        ),
        width05,
        const CreditNotesPageTextFormField(),
      ],
    );
  }
}
