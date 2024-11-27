import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:flutter/material.dart';

class NavigationController extends GetxController {
  PageController pageController = PageController();
  var currentIndex = 0.obs;

  // var changecolor = false.obs;

  changePageViewIndex(int index) {
    currentIndex.value = index;
  }

  changeNavigationBarIndex(int index) {
    currentIndex.value = index;
    // pageController.animateToPage(
    //   currentIndex.value,
    //   duration: const Duration(
    //     microseconds: 800,
    //   ),
    //   curve: Curves.easeInOut,
    // );
  }
}
