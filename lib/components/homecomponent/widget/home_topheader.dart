import 'package:flutter/material.dart';
import 'package:salespurchase_app/components/homecomponent/widget/home_textformfield.dart';

import '../../../commoncomponent/commontext/commontext.dart';
import '../../../responsive/sizeconfig.dart';
import '../../../utills/static_decoration.dart';

class HomePagetopheader extends StatelessWidget {
  const HomePagetopheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: SizeConfig().getPadding(all: 8),
          child: const CommonDarkGreyTextTitleWidget(
            text: 'Latest Transactions',
          ),
        ),
        width05,
        const HomePageTextformfield(),
      ],
    );
  }
}
