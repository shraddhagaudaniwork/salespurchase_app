import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:salespurchase_app/utills/app_colors.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/party_controller.dart';

class AddPartiespage extends StatelessWidget {
  const AddPartiespage({super.key});

  @override
  Widget build(BuildContext context) {
    PartyPostApiController partyPostApiController =
        Get.put(PartyPostApiController());
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: partyPostApiController.nameController,
              decoration: const InputDecoration(labelText: 'Party Name'),
            ),
            TextField(
              controller: partyPostApiController.companynameController,
              decoration: const InputDecoration(labelText: 'Company Name'),
            ),
            TextField(
              controller: partyPostApiController.emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: partyPostApiController.phonenumberController,
              decoration: const InputDecoration(labelText: 'Phone Number'),
            ),
            TextField(
              controller: partyPostApiController.receivablesController,
              decoration: const InputDecoration(labelText: 'Receivables'),
            ),
            TextField(
              controller: partyPostApiController.unusedcreditsController,
              decoration: const InputDecoration(labelText: 'Unused credits'),
            ),
            const SizedBox(height: 20),
            Obx(
              () => partyPostApiController.isLoading.value
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: () {
                        if (partyPostApiController
                                .nameController.text.isEmpty &&
                            partyPostApiController
                                .companynameController.text.isEmpty &&
                            partyPostApiController
                                .phonenumberController.text.isEmpty &&
                            partyPostApiController
                                .emailController.text.isEmpty &&
                            partyPostApiController
                                .unusedcreditsController.text.isEmpty &&
                            partyPostApiController
                                .receivablesController.text.isEmpty) {
                          Get.snackbar("Fill", "Please fil this details..");
                        } else {
                          final partyData = {
                            "name": partyPostApiController.nameController.text,
                            "companyname": partyPostApiController
                                .companynameController.text,
                            "email":
                                partyPostApiController.emailController.text,
                            "phonenumber": partyPostApiController
                                .phonenumberController.text,
                            "receivables": partyPostApiController
                                .receivablesController.text,
                            "unusedcredits": partyPostApiController
                                .unusedcreditsController.text,
                            // 'description':
                            //     partyPostApiController.descriptionController.text,
                          };
                          print("Sending Party Data: $partyData"); // Debugging
                          partyPostApiController.createParty(
                            partyData,
                          );
                        }
                      },
                      child: const Text('Create Party'),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
