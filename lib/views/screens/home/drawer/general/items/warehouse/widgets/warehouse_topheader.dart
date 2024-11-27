import 'package:flutter/material.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/widgets/warehose_textformfield.dart';

import '../../../../../../../../commoncomponent/commontext/commontext.dart';
import '../../../../../../../../responsive/sizeconfig.dart';
import '../../../../../../../../utills/static_decoration.dart';

class WareHousePageTopHeader extends StatelessWidget {
  const WareHousePageTopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(text: "All Warehouse"),
        ),
        width05,
        const WareHousePageTextFormField(),
      ],
    );
  }
}
