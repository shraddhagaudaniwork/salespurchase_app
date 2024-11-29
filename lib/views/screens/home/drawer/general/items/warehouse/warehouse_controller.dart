import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:salespurchase_app/views/screens/home/drawer/general/items/warehouse/model/warehouse_model.dart';

class WareHouseController extends GetxController{
  TextEditingController searchController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Rx<WarehouseModel?> allwarehousedata = Rx<WarehouseModel?>(null);

  RxBool isloading = false.obs;
  RxBool isdeleteLoading = false.obs;

  @override
  void onInit() {
    fetchWarehouseData();
    super.onInit();
  }

  //fetch all warehouse:
  fetchWarehouseData() async {
    try {
      print("start");
      isloading.value = true;
      String apikey = "http://localhost:3001/v1/items/getgodown";

      http.Response res = await http.get(
        Uri.parse(apikey),
      );
      print(res.statusCode);
      // debugger();
      if (res.statusCode == 200) {
        String data = res.body;
        print("data:$data");
        var decodedData = jsonDecode(data);
        print("decodeddata:$decodedData");
        allwarehousedata.value = WarehouseModel.fromMap(
          data: decodedData,
        );
        // UserModel userModel = UserModel.fromMap(data: decodedData);
        print("end");
        update();
        // return userModel;
      } else {
        print("Api call failed:${res.statusCode}");
      }
    } on Exception catch (e) {
      Get.snackbar(
        "Erroe",
        e.toString(),
      );
      // allwarehousedata.value = null; // or handle the error state
      update();
      print(e.toString());
    } finally {
      isloading.value = false;
      update();
    }
  }

  //delete warehouse for user can delete :
  //delete warehouse details by ID:
  Future<void> deleteInventory(String id) async {
    final String api =
        'http://localhost:3001/v1/items/deletegodown/$id'; // Replace with your API endpoint
    try {
      isdeleteLoading.value = true;
      // HTTP DELETE request
      final response = await http.delete(
        Uri.parse(api),
        headers: {'Content-Type': 'application/json'},
      );

      print("delete api response = ${response.statusCode}");
      // Handle response
      if (response.statusCode == 200 || response.statusCode == 204) {
        // alldata.value?.removeWhere((e) => e['_id'] == id);
        allwarehousedata.value?.godown.removeWhere((e) => e.id == id);
        Get.snackbar("Success", "Party deleted successfully.");
        update();
      } else {
        Get.snackbar(
          "Error",
          "Failed to delete party: ${response.body}",
        );
      }
    } catch (e) {
      Get.snackbar(
        "Error",
        "Something went wrong: $e",
      );
    } finally {
      isdeleteLoading.value = false;
    }
  }
}

// 3776e63034-581292f8d4-snph4o