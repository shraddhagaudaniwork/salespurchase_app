import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:salespurchase_app/utills/app_assets.dart';

import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import '../../../../../responsive/sizeconfig.dart';
import '../../../../../routes/route_name.dart';
import '../../../../../utills/app_colors.dart';
import '../../../../../utills/static_decoration.dart';
import '../navigation_controller.dart';
import 'bottombartext_widget.dart';

class BottomnavigationbarWidget extends StatelessWidget {
  const BottomnavigationbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    NavigationController navigationController = Get.put(NavigationController());

    //this is used to when we use Get.to();
    // final List routes = [
    //   const HomeComponent(),
    //   const SalesComponent(),
    //   const PurchaseComponent(),
    //   const SettingComponent(),
    // ];

    //this is used to when we use Get.toNamed();
    final List routes = [
      RoutesName.homecomponent,
      RoutesName.salesinvoicepage,
      // RoutesName.salescomponent,
      RoutesName.purchaseinvoicepage,
      // RoutesName.purchasecomponent,
      RoutesName.settingcomponent,
    ];

    return Obx(
      () {
        return StylishBottomBar(
          items: [
            BottomBarItem(
              icon: const Icon(Icons.home_outlined),
              title: Padding(
                padding: SizeConfig().getPadding(
                  right: 2,
                  left: 2,
                ),
                child: const BottombartextWidget(
                  // fontSize: 7.3,
                  text: "Home",
                ),
              ),
              selectedColor: AppColors.bluecolor,
              unSelectedColor: AppColors.darkgreycolor,
            ),
            BottomBarItem(
              icon: const Icon(
                Icons.keyboard_alt_outlined,
              ),
              title: Padding(
                padding: SizeConfig().getPadding(
                  right: 2,
                  left: 2,
                ),
                child: const BottombartextWidget(
                  text: "Sales",
                  // fontSize: 7.3,
                ),
              ),
              selectedColor: AppColors.bluecolor,
              unSelectedColor: AppColors.darkgreycolor,
            ),
            BottomBarItem(
              icon: const Icon(
                Icons.shopping_bag_outlined,
              ),
              title: Padding(
                padding: SizeConfig().getPadding(
                  right: 2,
                  left: 2,
                ),
                child: const BottombartextWidget(
                  text: "Purchase",
                  // fontSize: 6.6,
                ),
              ),
              selectedColor: AppColors.bluecolor,
              unSelectedColor: AppColors.darkgreycolor,
            ),
            BottomBarItem(
              icon: const Icon(Icons.settings),
              // icon: SvgPicture.asset(AppAsset.setting,fit: BoxFit.cover,),
              title: Padding(
                padding: SizeConfig().getPadding(
                  right: 2,
                  left: 2,
                ),
                child: const BottombartextWidget(
                  text: "Setting",
                  // fontSize: 7.3,
                ),
              ),
              selectedColor: AppColors.bluecolor,
              unSelectedColor: AppColors.darkgreycolor,
            ),
          ],
          option: AnimatedBarOptions(),
          // option: BubbleBarOptions(
          //
          //   barStyle: BubbleBarStyle.vertical,
          //   bubbleFillStyle: BubbleFillStyle.fill,
          //   opacity: 0.3,
          // ),
          // option: DotBarOptions(
          //
          // // padding: padding16,
          // // dotStyle: DotStyle.circle,
          // // inkColor: Colors.transparent,
          // // iconSize: 22,
          // // gradient: const LinearGradient(
          // //   colors: [
          // //     AppColors.bluecolor,
          // //     Colors.blueGrey,
          // //   ],
          // // ),
          // ),
          elevation: 10,
          fabLocation: StylishBarFabLocation.center,
          hasNotch: true,
          currentIndex: navigationController.currentIndex.value,
          notchStyle: NotchStyle.circle,
          onTap: (val) {
            navigationController.changeNavigationBarIndex(
              val,
            );
            Get.toNamed(
              routes[val],
            );
            // context.go(routes[index]); //when using go_router package:
          },
          iconSpace: 20.00,
        );
      },
    );
  }
}

// return BottomNavigationBar(
// elevation: 10,
// showUnselectedLabels: true,
// selectedLabelStyle: TextStyle(
// fontWeight: fontWeight600,
// ),
// unselectedLabelStyle: TextStyle(
// fontWeight: fontWeight500,
// ),
// selectedFontSize: 12.sp,
// unselectedFontSize: 12.sp,
// selectedItemColor: AppColors.bluecolor,
// unselectedItemColor: AppColors.darkgreycolor,
//
// enableFeedback: true,
// currentIndex: navigationController.currentIndex.value,
// onTap: (val) {
// navigationController.changeNavigationBarIndex(val);
// },
// items: const [
// BottomNavigationBarItem(
// icon: Icon(Icons.home_outlined),
// label: "Home",
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.keyboard_alt_outlined),
// label: "Sales",
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.shopping_bag_outlined),
// label: "Purchase",
// ),
// BottomNavigationBarItem(
// icon: Icon(Icons.settings),
// label: "Setting",
// ),
// ],
// );
