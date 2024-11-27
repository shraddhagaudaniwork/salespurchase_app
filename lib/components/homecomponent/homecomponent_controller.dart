import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeComponentController extends GetxController {

  TextEditingController searchController = TextEditingController();

  // Number of items to show initially
  final int initialItemCount = 5;

  // Observable variable for number of items to show
  RxInt visibleItemCount = 5.obs;

  // Toggle the list to show more or less items
  void toggleShowMore(int totalItemCount) {
    if (visibleItemCount.value == initialItemCount) {
      // Show more items if we are showing the initial count
      visibleItemCount.value = totalItemCount;
    } else {
      // Reset to initial item count
      visibleItemCount.value = initialItemCount;
    }
  }
}
