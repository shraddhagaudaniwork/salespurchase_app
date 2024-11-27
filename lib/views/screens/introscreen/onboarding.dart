import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/routes/route_name.dart';
import 'package:salespurchase_app/utills/app_assets.dart';
import 'package:salespurchase_app/views/screens/introscreen/onboarding/onboardingcontroller.dart';
import 'package:salespurchase_app/views/screens/introscreen/widgets/button/createaccountbutton.dart';
import 'package:salespurchase_app/views/screens/introscreen/widgets/button/loginbutton.dart';

import '../../../responsive/sizeconfig.dart';
import 'onboarding/onboardcontent.dart';
import 'onboarding/onboardingmodel.dart';
import 'onboarding/widgets/dotindicator.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingController onBoardingController = Get.put(OnBoardingController());
    const Color kDarkBlueColor = Color(0xFF053149);

    return Obx(() {
      return Scaffold(
        body: Column(
          children: [
            // Carousel area
            Expanded(
              child: PageView.builder(
                onPageChanged: (index) {
                  onBoardingController.pageIndex.value = index;
                  // setState(() {
                  //   _pageIndex = index;
                  // });
                },
                itemCount: demoData.length,
                // controller: _pageController,
                controller: onBoardingController.pageController,
                itemBuilder: (context, index) =>
                    OnBoardContent(
                      title: demoData[index].title,
                      description: demoData[index].description,
                      image: demoData[index].image,
                    ),
              ),
            ),
            // Indicator area
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  demoData.length,
                      (index) =>
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: DotIndicator(
                          isActive: index ==
                              onBoardingController.pageIndex.value,
                        ),
                      ),
                ),
              ],
            ),

            // Button area
            Padding(
              padding: SizeConfig().getPadding(
                right: 30,
                left: 30,
                top: 30,
                bottom: 20,
              ),
              child: GestureDetector(
                  onTap: () {
                    Get.toNamed(
                      RoutesName.signuppage,
                    );
                  },
                  child: const CreateAccountButton()),
            ),
            Padding(
              padding: SizeConfig().getPadding(
                  right: 30, left: 30, bottom: 30 ,),
                  child: const LoginButton(),
            ),
          ],
        ),
        // body: Container(
        //   padding: const EdgeInsets.symmetric(horizontal: 16),
        //   // Background gradient
        //   decoration: const BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: <Color>[
        //         Color(0xff1f005c),
        //         Color(0xff5b0060),
        //         Color(0xff870160),
        //         Color(0xffac255e),
        //         Color(0xffca485c),
        //         Color(0xffe16b5c),
        //         Color(0xfff39060),
        //         Color(0xffffb56b),
        //       ],
        //       tileMode: TileMode.mirror,
        //     ),
        //   ),
        //   child: Column(
        //     children: [
        //       // Carousel area
        //       Expanded(
        //         child: PageView.builder(
        //           onPageChanged: (index) {
        //             onBoardingController.pageIndex.value = index;
        //             // setState(() {
        //             //   _pageIndex = index;
        //             // });
        //           },
        //           itemCount: demoData.length,
        //           // controller: _pageController,
        //           controller: onBoardingController.pageController,
        //           itemBuilder: (context, index) => OnBoardContent(
        //             title: demoData[index].title,
        //             description: demoData[index].description,
        //             image: demoData[index].image,
        //           ),
        //         ),
        //       ),
        //       // Indicator area
        //       Padding(
        //         padding: const EdgeInsets.only(bottom: 16.0),
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //             ...List.generate(
        //               demoData.length,
        //               (index) => Padding(
        //                 padding: const EdgeInsets.only(right: 4),
        //                 child: DotIndicator(
        //                   isActive:
        //                       index == onBoardingController.pageIndex.value,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //
        //       // Button area
        //       InkWell(
        //         onTap: () {
        //           print("Button clicked!");
        //         },
        //         child: Container(
        //           margin: const EdgeInsets.only(bottom: 48),
        //           height: Get.height * 0.075,
        //           width: Get.width,
        //           decoration: BoxDecoration(
        //             color: Colors.purple,
        //             borderRadius: BorderRadius.circular(10),
        //           ),
        //           child: const Center(
        //             child: Text(
        //               "Login / Registration",
        //               style: TextStyle(
        //                 fontFamily: "HappyMonkey",
        //                 color: Colors.white,
        //                 fontSize: 18,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      );
    });
  }
}
