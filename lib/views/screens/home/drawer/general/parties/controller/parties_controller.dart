import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/models/parties_model.dart';

//
class PartiesController extends GetxController {
  // Loading indicator
  var isLoading = false.obs;

  // Fetch parties from API
  Future<PartyModel?> fetchParties() async {
    try {
      isLoading(true);

      String apikey = "http://localhost:3001/v1/parties/getparties";

      http.Response response = await http.get(Uri.parse(apikey));

      if (response.statusCode == 200) {
        String data = response.body;

        Map decodeddata = jsonDecode(data);

        print(
            "******************************* DecodedData:$decodeddata ***********************");

        PartyModel partyModel = PartyModel.fromMap(data: decodeddata);

        print(
            "======================= partyModel:$partyModel========================");
        return partyModel;
      } else {
        Get.snackbar(
          'Error',
          'Failed to fetch data. Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch data: $e');
    } finally {
      isLoading(false); // Stop loading
    }
  }
}
