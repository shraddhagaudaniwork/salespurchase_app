import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/items/inventory/model/inventory_model.dart';
import 'package:http/http.dart' as http;

class InventoryController extends GetxController {
  TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Rx<InventoryModel?> allinventorydata = Rx<InventoryModel?>(null);

  RxBool isloading = false.obs;
  RxBool isLoading = false.obs;

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

  //delete inventory for user can delete :
  //delete inventory details by ID:
  Future<void> deleteInventory(String id) async {
    final String api =
        'http://localhost:3001/v1/items/deleteinventory/$id'; // Replace with your API endpoint

    try {
      isLoading.value = true;
      // HTTP DELETE request
      final response = await http.delete(
        Uri.parse(api),
        headers: {'Content-Type': 'application/json'},
      );

      print("delete api response = ${response.statusCode}");
      // Handle response
      if (response.statusCode == 200 || response.statusCode == 204) {
        // alldata.value?.removeWhere((e) => e['_id'] == id);
        allinventorydata.value?.inventory.removeWhere((e) => e.id == id);
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
      isLoading.value = false;
    }
  }
}

class InventoryPostApiController extends GetxController {
  final TextEditingController itemNameController = TextEditingController();
  final TextEditingController itemCodeController = TextEditingController();
  final TextEditingController stockQuantityController = TextEditingController();
  final TextEditingController sellingPriceController = TextEditingController();
  final TextEditingController purchasePriceController = TextEditingController();
  final TextEditingController wholesalePriceController =
      TextEditingController();
  final TextEditingController mrpController = TextEditingController();

  // final TextEditingController descriptionController = TextEditingController();

  // Reactive variable to track loading state
  var isLoading = false.obs;

  // Function to create a party
  Future<void> createInventory(Map<String, dynamic> inventoryData) async {
    // API endpoint
    const String apikey = 'http://localhost:3001/v1/items/createinventory';
    // final String apikey = 'http://10.0.2.2:3001/v1/parties/createparties';

    try {
      print("Start");
      isLoading.value = true;

      final response = await http.post(
        Uri.parse(apikey),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(inventoryData),
      );

      print("Response Body: ${response.body}"); // Debugging the raw response
      print("Response Status Code: ${response.statusCode}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = jsonDecode(response.body);
        print(
          "ResponseData:$responseData",
        );
        Get.snackbar("Success", "Party created: ${responseData['message']}");
        print("end");
      } else {
        final errorData = jsonDecode(response.body);
        Get.snackbar(
          "Error",
          "Failed: ${errorData['message'] ?? 'Unknown error'}",
        );
      }
    } catch (e) {
      print("Error Catch Data: $e"); // Debugging the error
      Get.snackbar(
        "Error",
        "Something went wrong: $e",
      );
    } finally {
      isLoading.value = false;
    }
  }
}

class InventoryEditApiController extends GetxController {
  var isLoading = false.obs;
  final TextEditingController editItemNameController = TextEditingController();
  final TextEditingController editItemCodeController = TextEditingController();
  final TextEditingController editStockQuantityController =
      TextEditingController();
  final TextEditingController editSellingPriceController =
      TextEditingController();
  final TextEditingController editPurchasePriceController =
      TextEditingController();
  final TextEditingController editWholesalePriceController =
      TextEditingController();
  final TextEditingController editMrpController = TextEditingController();

  // Update Inventory details by ID
  Future<void> updateInventory(String id, Map<String, dynamic> updateData) async {
    final String url =
        'http://localhost:3001/v1/items/updateinventory/$id'; // Adjust for your backend

    try {
      isLoading.value = true;

      // Make PUT request
      final response = await http.put(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(updateData),
      );

      print("Response Status Code: ${response.statusCode}");
      print("Response Body: ${response.body}");

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        Get.snackbar(
            "Success", data['message'] ?? "Party updated successfully");
      } else {
        final error = jsonDecode(response.body);
        Get.snackbar("Error", error['message'] ?? "Failed to update party");
      }
    } catch (e) {
      print("Error in updateParty: $e");
      Get.snackbar(
        "Error",
        "Something went wrong: $e",
      );
    } finally {
      isLoading.value = false;
    }
  }
}
