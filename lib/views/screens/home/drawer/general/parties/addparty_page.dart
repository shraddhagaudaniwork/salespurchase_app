import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salespurchase_app/utills/app_colors.dart';
import 'package:salespurchase_app/views/screens/home/drawer/general/parties/party_controller.dart';
import 'package:salespurchase_app/widgets/appbar/custom_appbartextwidget.dart';
import 'package:salespurchase_app/widgets/appbar/custom_appbarwidget.dart';

class AddPartiespage extends StatelessWidget {
  const AddPartiespage({super.key});

  @override
  Widget build(BuildContext context) {
    PartyPostApiController partyPostApiController =
        Get.put(PartyPostApiController());
    return Scaffold(
      appBar: const CustomAppBarWidget(
        title: CustomAppBarTextWidget(
          text: "Add Parties Page",
        ),
      ),
      backgroundColor: AppColors.backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: partyPostApiController.formkey,
          child: Column(
            children: [
               TextFormField(
                  controller: partyPostApiController.nameController,
                  decoration: const InputDecoration(
                    labelText: 'Party Name',
                  ),
                  validator: (val) =>
                      partyPostApiController.partyNameValidator(val!),
                  // validator: (val) {
                  //   if (val!.isEmpty) {
                  //     return "Please enter name";
                  //   }
                  //   return null;
                  // },

              ),
              TextFormField(
                controller: partyPostApiController.companynameController,
                decoration: const InputDecoration(
                  labelText: 'Company Name',
                ),
                validator: (val) =>
                    partyPostApiController.companyNameValidator(val!),
              ),
              TextFormField(
                controller: partyPostApiController.emailController,
                validator: (val) => partyPostApiController.emailValidator(val!),
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                controller: partyPostApiController.phonenumberController,
                decoration: const InputDecoration(
                  labelText: 'Phone Number',
                ),
                validator: (val) =>
                    partyPostApiController.phoneNumberValidator(val!),
              ),
              TextFormField(
                controller: partyPostApiController.receivablesController,
                decoration: const InputDecoration(
                  labelText: 'Receivables',
                ),
                validator: (val) =>
                    partyPostApiController.recevaibleValidator(val!),
              ),
              TextFormField(
                controller: partyPostApiController.unusedcreditsController,
                decoration: const InputDecoration(
                  labelText: 'Unused credits',
                ),
                validator: (val) =>
                    partyPostApiController.unusedCreditsValidator(val!),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => partyPostApiController.isLoading.value
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: partyPostApiController.createPartyButton,
                        // onPressed: () {

                        // if (partyPostApiController.formkey.currentState!
                        //     .validate()) {
                        // partyPostApiController.formkey.currentState!.save();
                        // final partyData = {
                        // "name":
                        // partyPostApiController.nameController.text,
                        // "companyname": partyPostApiController
                        //     .companynameController.text,
                        // "email":
                        // partyPostApiController.emailController.text,
                        // "phonenumber": partyPostApiController
                        //     .phonenumberController.text,
                        // "receivables": partyPostApiController
                        //     .receivablesController.text,
                        // "unusedcredits": partyPostApiController
                        //     .unusedcreditsController.text,
                        // };
                        // print(
                        // "Sending Party Data: $partyData",
                        // ); // Debugging
                        // partyPostApiController.createParty(
                        // partyData,
                        // );

                        // if (partyPostApiController
                        //         .nameController.text.isEmpty &&
                        //     partyPostApiController
                        //         .companynameController.text.isEmpty &&
                        //     partyPostApiController
                        //         .phonenumberController.text.isEmpty &&
                        //     partyPostApiController
                        //         .emailController.text.isEmpty &&
                        //     partyPostApiController
                        //         .unusedcreditsController.text.isEmpty &&
                        //     partyPostApiController
                        //         .receivablesController.text.isEmpty) {
                        //   Get.snackbar("Fill", "Please fil this details..");
                        // } else {
                        //   final partyData = {
                        //     "name": partyPostApiController.nameController.text,
                        //     "companyname": partyPostApiController
                        //         .companynameController.text,
                        //     "email":
                        //         partyPostApiController.emailController.text,
                        //     "phonenumber": partyPostApiController
                        //         .phonenumberController.text,
                        //     "receivables": partyPostApiController
                        //         .receivablesController.text,
                        //     "unusedcredits": partyPostApiController
                        //         .unusedcreditsController.text,
                        //
                        //   };
                        //   print(
                        //     "Sending Party Data: $partyData",
                        //   ); // Debugging
                        //   partyPostApiController.createParty(
                        //     partyData,
                        //   );
                        // }

                        child: const Text(
                          'Create Party',
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
