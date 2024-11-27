import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/inventory/model/inventory_model.dart';
import 'package:http/http.dart'as http;

class InventoryController extends GetxController{
  TextEditingController searchController = TextEditingController();

  Rx<InventoryModel?> allinventorydata = Rx<InventoryModel?>(null);

  RxBool isloading = false.obs;


  @override
  void onInit() {
    fetchInventoryData();
    super.onInit();
  }

  //fetch all inventory:
  fetchInventoryData() async {
    try {
      print("start");
      isloading.value = true;
      String apikey = "http://localhost:3001/v1/items/getinventory";

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
        allinventorydata.value = InventoryModel.fromMap(
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
      Get.snackbar("Erroe", e.toString());
      // allinventorydata.value = null; // or handle the error state
      update();
      print(e.toString());
    } finally {
      isloading.value = false;
      update();
    }
  }
}