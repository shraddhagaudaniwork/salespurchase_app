import 'package:flutter/material.dart';

import '../../responsive/sizeconfig.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  const Row(children: [

    ],);
  }
}

