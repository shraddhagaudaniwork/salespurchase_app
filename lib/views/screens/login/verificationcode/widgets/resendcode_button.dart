import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/commoncomponent/commontext/commontext.dart';

import '../../../../../routes/route_name.dart';

class ResendCodeButton extends StatelessWidget {
  const ResendCodeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          RoutesName.verificationcodepage,
        );
      },
      child: const CommonBlueTextWidget(
        fontSize: 13,
        text: 'Resend Code',
      ),
    );
  }
}
