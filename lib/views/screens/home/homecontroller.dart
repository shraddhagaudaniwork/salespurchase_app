import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {




  List bottomnavigationbarlist = const [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.select_all,
      ),
      label: "Sales",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.shopping_bag_outlined,
      ),
      label: "Purchase",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: "Setting",
    ),
  ];
}
