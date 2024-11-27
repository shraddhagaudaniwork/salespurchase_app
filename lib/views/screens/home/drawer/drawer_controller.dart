import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';

class ExpensionTileController extends GetxController {
  //drawer in items:
  var iscustomitemicon = false.obs;

  changeItemIcon({required bool val}) {
    iscustomitemicon.value = val;
  }

  // drawer in sales:
  var iscustomsalesicon = false.obs;

  changeSaleIcon({required bool val}) {
    iscustomsalesicon.value = val;
  }

  // drawer in purchase:
  var iscustompurchaseicon = false.obs;

  changePurchaseIcon({required bool val}) {
    iscustompurchaseicon.value = val;
  }

  // bool selected = false;
  var islisttilecolor = false.obs;

  changeListTileColor() {
    islisttilecolor.value != islisttilecolor.value;
  }
}

class ItemTileController extends GetxController {
  var selectedIndex =
      (-1).obs; // Observable to store the index of the selected tile

  bool isSelected = false;

  void selectTile(int index) {
    selectedIndex.value = index;
  }
}

class SalesTileController extends GetxController {
  var selectedIndex =
      (-1).obs; // Observable to store the index of the selected tile

  bool isSelected = false;

  void selectTile(int index) {
    selectedIndex.value = index;
  }
}

class PurchaseTileController extends GetxController {
  var selectedIndex =
      (-1).obs; // Observable to store the index of the selected tile

  bool isSelected = false;

  void selectTile(int index) {
    selectedIndex.value = index;
  }
}
