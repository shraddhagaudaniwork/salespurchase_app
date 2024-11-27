import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/purchase/purchaseorders/widgets/purchaseorders_textformfield.dart';
import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class PurchaseOrdersPageTopHeader extends StatelessWidget {
  const PurchaseOrdersPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(
            text: "Purchase Orders",
          ),
        ),
        width05,
        const PurchaseOrdersPageTextformfield(),
      ],
    );
  }
}
