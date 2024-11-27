import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  late PageController pageController;
  var pageIndex = 0.obs;
  Timer? _timer;
  var isActive = false.obs;

  @override
  void onInit() {
    super.onInit();

    // Initialize page controller
    pageController = PageController(initialPage: 0);
    // Automatic scroll behaviour
    _timer = Timer.periodic(
        const Duration(
          seconds: 5,
        ), (Timer timer) {
      if (pageIndex.value < 3) {
        pageIndex.value++;
      } else {
        pageIndex.value = 0;
      }

      pageController.animateToPage(

        pageIndex.value,
        duration: const Duration(
          milliseconds: 350,
        ),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    // Dispose everything
    pageController.dispose();
    _timer!.cancel();
    super.dispose();
  }
}
