import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/models/parties_model.dart';
import 'package:http/http.dart' as http;

class PartyController extends GetxController {
  TextEditingController searchController = TextEditingController();
  Rx<PartyModel?> alldata = Rx<PartyModel?>(null);

  RxBool isloading = false.obs;
  RxBool isLoading = false.obs; // Reactive loading state

  @override
  void onInit() {
    fetchPartiesData();
    super.onInit();
  }

  //fetch all Parties:
  fetchPartiesData() async {
    try {
      print("start");
      isloading.value = true;
      String apikey = "http://localhost:3001/v1/parties/getparties";

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
        alldata.value = PartyModel.fromMap(
          data: decodedData,
        );
        // UserModel userModel = UserModel.fromMap(data: decodedData);
        print("end");
        update();
        // return userModel;
      } else {
        print("Api call failed:${res.statusCode}");
        update();
      }
    } on Exception catch (e) {
      alldata.value = null; // or handle the error state
      update();
      print(e.toString());
    } finally {
      isloading.value = false;
      update();
    }
  }

  //delete party for user can delete :
  //delete party details by ID:
  Future<void> deleteParty(String id) async {
    final String api =
        'http://localhost:3001/v1/parties/deleteparties/$id'; // Replace with your API endpoint

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
        alldata.value?.parties.removeWhere((e) => e.id == id);
        Get.snackbar("Success", "Party deleted successfully.");
        update();
      } else {
        Get.snackbar(
          "Error",
          "Failed to delete party: ${response.body}",
        );
        update();
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

class PartyPostApiController extends GetxController {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController companynameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phonenumberController = TextEditingController();
  final TextEditingController receivablesController = TextEditingController();
  final TextEditingController unusedcreditsController = TextEditingController();

  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  // Reactive variable to track loading state
  var isLoading = false.obs;
  RxBool isAutoValidate = false.obs;

  // Function to create a party
  Future<void> createParty(Map<String, dynamic> partyData) async {
    // API endpoint
    const String apikey = 'http://localhost:3001/v1/parties/createparties';
    // final String apikey = 'http://10.0.2.2:3001/v1/parties/createparties';

    try {
      print("Start");
      isLoading.value = true;
      // if (!GetUtils.isEmail(partyData['email'] ?? "")) {
      //   Get.snackbar("Error", "Please provide a valid email address.");
      //
      // }/

      final response = await http.post(
        Uri.parse(apikey),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(partyData),
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
        update();
      } else {
        final errorData = jsonDecode(
          response.body,
        );
        Get.snackbar(
          "Error",
          "Failed: ${errorData['message'] ?? 'Unknown error'}",
        );
        update();
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

  //check validation for partyname field value:
  String? partyNameValidator(String value) {
    if (value.isEmpty || value.length < 5) {
      return "please enter party name ";
    }
    return null;
  }

  //check validation for companyname field value:
  String? companyNameValidator(String value) {
    if (value.isEmpty || value.length < 5) {
      return "please enter company name";
    }
    return null;
  }

  //check validation for email field value:
  String? emailValidator(String value) {
    if (value.isEmpty || !value.contains('@') || !value.contains('.com')) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  //check validation for phonenumber field value:
  String? phoneNumberValidator(String value) {
    if (value.isEmpty || value.length > 10) {
      return 'Please enter a valid phone number.';
    }
    return null;
  }

  //check validation for receivable field value:
  String? recevaibleValidator(String value) {
    if (value.isEmpty) {
      return 'Please enter recevaibles .';
    }
    return null;
  }

  //check validation for unusedcredits field value:
  String? unusedCreditsValidator(String value) {
    if (value.isEmpty) {
      return 'Please enter unused credits.';
    }
    return null;
  }

  void clearVariable() {
    isAutoValidate.value = false;
    emailController.clear();
    nameController.clear();
    companynameController.clear();
    phonenumberController.clear();
    receivablesController.clear();
    unusedcreditsController.clear();
    update();
  }

  //create party button pressed:
  void createPartyButton() {
    isAutoValidate.value = true;
    // final isValid = formkey.currentState!.validate();
    FocusScopeNode currentFocus = FocusScope.of(Get.context!);

    // Get.focusScope!.unfocus();

    if (formkey.currentState!.validate()) {
      currentFocus.unfocus();
      formkey.currentState!.save();
      print(emailController.text);
      print(phonenumberController.text);
      print(nameController.text);
      print(companynameController.text);
      print(receivablesController.text);
      print(unusedcreditsController.text);
      final partyData = {
        "name": nameController.text,
        "companyname": companynameController.text,
        "email": emailController.text,
        "phonenumber": phonenumberController.text,
        "receivables": receivablesController.text,
        "unusedcredits": unusedcreditsController.text,
      };
      print(
        "Sending Party Data: $partyData",
      ); // Debugging
      createParty(partyData);
      // User those values to send our auth request ...
    }
    // clearVariable();
  }
}

// class PartyDeleteApiController extends GetxController {
//   var isLoading = false.obs; // Reactive loading state
//
//   // Function to delete a party by ID
//   Future<void> deleteParty(String id) async {
//     final String api =
//         'http://localhost:3001/v1/items/deleteinventory/$id'; // Replace with your API endpoint
//
//     try {
//       isLoading.value = true;
//       // HTTP DELETE request
//       final response = await http.delete(
//         Uri.parse(api),
//         headers: {'Content-Type': 'application/json'},
//       );
//
//       print("delete api rfes = ${response.statusCode}");
//       // Handle response
//       if (response.statusCode == 200 || response.statusCode == 204) {
//         Get.snackbar("Success", "Party deleted successfully.");
//       } else {
//         Get.snackbar(
//           "Error",
//           "Failed to delete party: ${response.body}",
//         );
//       }
//     } catch (e) {
//       Get.snackbar(
//         "Error",
//         "Something went wrong: $e",
//       );
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }

class PartyEditApiController extends GetxController {
  var isLoading = false.obs;
  final TextEditingController editnameController = TextEditingController();
  final TextEditingController editcompanynameController =
      TextEditingController();
  final TextEditingController editemailController = TextEditingController();
  final TextEditingController editphonenumberController =
      TextEditingController();
  final TextEditingController editreceivablesController =
      TextEditingController();
  final TextEditingController editunusedcreditsController =
      TextEditingController();

  // Update party details by ID
  Future<void> updateParty(String id, Map<String, dynamic> updateData) async {
    final String url =
        'http://localhost:3001/v1/parties/updateparties/$id'; // Adjust for your backend

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
          "Success",
          data['message'] ?? "Party updated successfully",
        );
        update();
      } else {
        final error = jsonDecode(response.body);
        Get.snackbar(
          "Error",
          error['message'] ?? "Failed to update party",
        );
        update();
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
