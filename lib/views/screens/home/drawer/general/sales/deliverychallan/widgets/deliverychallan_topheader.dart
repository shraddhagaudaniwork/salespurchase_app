import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/sales/deliverychallan/widgets/deliverychallan_textformfield.dart';
import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class DeliveryChallanPageTopHeader extends StatelessWidget {
  const DeliveryChallanPageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "Delivery Challan"),
        ),
        width05,
        const DeliveryChallanTextFormField(),
      ],
    );
  }
}
