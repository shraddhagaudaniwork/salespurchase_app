import 'package:flutter/material.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/inventory/widgets/inventory_textformfield.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../utills/static_decoration.dart';

class InventoryPageTopheader extends StatelessWidget {
  const InventoryPageTopheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "All Inventories"),
        ),
        width05,
        const InventoryPageTextformfield(),
      ],
    );
  }
}
