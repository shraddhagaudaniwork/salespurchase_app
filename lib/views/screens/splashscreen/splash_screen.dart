import 'package:flutter/material.dart';
import 'package:salespurchase_app/responsive/sizeconfig.dart';
import 'package:salespurchase_app/views/screens/splashscreen/widgets/getstartedbutton.dart';

import '../../../utills/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bluecolor,
      body: Padding(
        padding: SizeConfig().getPadding(all: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text("Splash screen"),
            ),
            const Spacer(),
            Padding(
              padding: SizeConfig().getPadding(left: 30, right: 30, bottom: 40),
              child: const GetStartedContainer(),
            )
          ],
        ),
      ),
    );
  }
}
